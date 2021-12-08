from sqlalchemy import inspect
from sqlalchemy import create_engine
from datetime import date
from functools import reduce
import click
import time
import functools
from decimal import Decimal
import dataset
from holdings2 import db, LBName, Tree, HoldIndex, ETFDB 
import yfinance as yf
import csv, itertools
import pandas as pd
import openpyxl
from holdings2 import app
from config import Config

MASTER_ETF_AND_TAG_LIST = 'lb_1021.csv'
ROWS = 500
DATABASE_URL_HISTORICAL_DATASET = 'postgresql://postgres:postgres@localhost:5432/historical_prices'

SPY_HOLDINGS_CSV = 'index_components/holdings-daily-us-en-spy_10302021.csv'

#single etf scanner globas
OUTPUT_FOR_CHART_FILE='PRACTICE_WORKING_FILE_WITH_CHART.xlsx'
PRODUCTION_OUTPUT='WORKING_FILE_WITH_CHART.xlsx'


def str_to_list_helper(str):
    str = str[1:]
    str = str[:-1]
    list = str.split(",")
    return list

    id_list = []

def unpack_lod(list_of_dicts):
    id_list = []
    tag_list = []
    for item in list_of_dicts:
        print(item)
        for k, v in item.items():
            for it in v:
                id_list.append(k)
                tag_list.append(it)

    return id_list, tag_list

def timer(func):
    """Print the runtime of the decorated function"""
    @functools.wraps(func)
    def wrapper_timer(*args, **kwargs):
        import time
        start_time = time.perf_counter()    # 1
        value = func(*args, **kwargs)
        end_time = time.perf_counter()      # 2
        run_time = end_time - start_time    # 3
        print(f"Finished {func.__name__!r} in {run_time:.4f} secs")
        return value
    return wrapper_timer

def topdown_presenter(result_list=None):
    print('tp?')
    result_list = sorted(result_list, key=lambda name: name[1])
    result_list.reverse()
    for count, item in enumerate(result_list, 1):
        print(count, item[0], item[1], item[2])

def normalize_ticker(name):
    if '.' in name:
        name = name.replace('.', '-')
        return name
    else:
        return name

def init_table(t_name=None):    
    table_names = inspect(db.engine).get_table_names()
    if t_name in table_names:
        LBName.__table__.drop(db.engine)
    
    db.create_all()

#drop tables by list
def drop_dataset_tables(csv_file=None):
    from dataset import Table
    with open(csv_file, encoding='utf-8') as csvf: 
        
        csv_reader = csv.DictReader(csvf) 
        ticker_list = []
        for count, row in enumerate(itertools.islice(csv_reader, ROWS), 1):
            print(count, row['Ticker'])
            name = row['Ticker']   
            Table(db, name).drop()

def price_updater(filename=None):
    with open(filename, encoding='utf-8') as csvf: 
        #load csv file data using csv library's dictionary reader
        csvReader = csv.DictReader(csvf) 

        for count, row in enumerate(csvReader, 1):
            item = LBName()
            # print(row)
            try:
                item.name = row['\ufeffname']
            except KeyError as e:
                print(f'ufeff_error: {e}, will attempt to try row[name]')
                item.name = row['name']
            try:                
                price = yf.download(item.name, period='1y', interval='1wk')
                current_price = price['Close'].tail(1).item()
                lo52 = price['Close'].min()
                hi52 = price['Close'].max()
                gain_factor = current_price/lo52
                off_hi = (current_price/hi52) -1
                print(count, item.name, current_price, gain_factor, off_hi)
                item.gain_factor = gain_factor
                item.off_hi = off_hi
                item.current_price = current_price
                item.hi52 = hi52
                item.lo52 = lo52
                db.session.add(item)
                db.session.commit()
            except Exception as e:
                print(e, f'unable download ticker {item.name}')

    db.session.close()

'''rates helpers'''
def rates_define_df_index(list1=None):
    '''index prices series to date'''
    price_df = pd.DataFrame.from_dict(list1)
    #convert date columns to pd datetime
    price_df['date'] = price_df['date'].astype('datetime64[ns]')
    #set date as index
    price_df = price_df.set_index('date')

    return price_df


@click.group()
def cli():
    pass

'''db utils'''
@cli.command()
def database_test():
    db.create_all()
    table_names = inspect(db.engine).get_table_names()
    for item in table_names:
        print(item)

    LBName.__table__.drop(db.engine)

    table_names = inspect(db.engine).get_table_names()
    for item in table_names:
        print(item)

    db.create_all()
    table_names = inspect(db.engine).get_table_names()
    for item in table_names:
        print(item)

    # print(table_names)
    # inspector = inspect(db.engine)
    # # db.create_all()
    # print(inspector)
    # print(inspector.has_table(LBName.name))
    # print(db)
    # db.drop_all()

    # result = LBName.query.all()
    for count, item in enumerate(LBName.query.all(), 2):
        print(count, item)
        if count == 5:
            break

    print('******************************************TREE************************************************')
    # result = LBName.query.all()
    for count, item in enumerate(Tree.query.all(), 1):
        print(count, item)
        if count == 5:
            break


@cli.command()
def drop_single_dataset_table_manual():
    
    db_set = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)
    table = db_set['index_components/fang_names.csv_<class datetime.date>']
    table.drop()

'''topdown funcs'''
@cli.command()
@click.option('-f', '--function_choice')
def topdown_diagnose(function_choice):
    click.echo(f'topdown diagnoses {function_choice}')

    if function_choice == 'check_tree':
        for item in Tree.query.all():
            print(item)

    if function_choice == 'check_lb':
        for item in LBName.query.all():
            print(item)



@cli.command()
def topdown_drop_priceset():
    click.echo('drop timeseries data for topdown')
    db = dataset.connect(DATABASE_URL_HISTORICAL_DATASET)

    drop_dataset_tables(csv_file=SPY_HOLDINGS_CSV) 

@cli.command()
@timer
def topdown_build_priceset():
    click.echo('building timeseries data for topdown')
    db = dataset.connect(DATABASE_URL_HISTORICAL_DATASET)

    def get_csv(tag, csv_file=None, wait=None):
        with open(csv_file, encoding='utf-8') as csvf: 
            
            csv_reader = csv.DictReader(csvf) 
            ticker_list = []
            for count, row in enumerate(itertools.islice(csv_reader, ROWS), 1):
                time.sleep(wait)
                name = row['name']
                name = normalize_ticker(name)
                # sector = row['Sector']
                price = yf.download(name, period='1y', interval='1wk')
                current_price = price['Close'].tail(1).item()
                current_date = str(price.index[-1])
                table = db[name]
                price = price['Close']
                price = round(price, 2)
                date = price.index

                lbname = LBName()
                lbname.name = name


                 # possible price history db implementation with dataset
                # for p, d in zip(price, date):
                    # print(name, str(p), d)
                    # table.insert(dict(name=name, date=d, price=p, tag=tag, sector=sector))
     
    get_csv('topdown', MASTER_ETF_AND_TAG_LIST, wait=1)
    
@cli.command()
def topdown_build():
    click.echo('build top down scan')

    table_names = inspect(db.engine).get_table_names()
    if 'tree' in table_names:
        Tree.__table__.drop(db.engine)

    db.create_all()     

    ## create list of themes ie stocks, bonds, crypto
    with open(MASTER_ETF_AND_TAG_LIST, encoding='utf-8') as csvf: 
            #load csv file data using csv library's dictionary reader
            csv_reader = csv.DictReader(csvf) 
            theme_list = []
            for row in itertools.islice(csv_reader, ROWS):
                theme = row['TYPE']
                print('theme', theme)
                theme_list.append(theme)

    final_theme_list_from_csv = list(dict.fromkeys(theme_list))
    
    # build top-level themes_list from csv and persist to DB
    # ie
    # Tree(id=1, parent_id=None, data='stocks', children=[])
    # Tree(id=2, parent_id=None, data='bonds', children=[])
    # Tree(id=3, parent_id=None, data='crypto', children=[])

    for theme in final_theme_list_from_csv:
        tree = Tree()
        tree.parent_id = None
        tree.data = theme
        db.session.add(tree)
        db.session.commit()
    
    #build theme-tag group, assign tags to themes, persist to db
    # ie
    # Tree(id=4, parent_id=1, data='{risk_on,growth,smallcap,risk_off,us,ew,commodity,value}', children=[])
    # Tree(id=5, parent_id=2, data='{us,risk_off}', children=[])
    with open(MASTER_ETF_AND_TAG_LIST, encoding='utf-8') as csvf: 

            csv_reader = csv.DictReader(csvf) 
            
            db_theme_list = []
            for result in Tree.query.all():
                dtl_dict = {}
                dtl_dict[result.data] = []
                db_theme_list.append(dtl_dict)            

            theme_list1 = []

            for row in itertools.islice(csv_reader, ROWS):
                for theme_dict in db_theme_list:
                    for key, list1 in theme_dict.items():
                        for k, v in row.items():
                            if row['TYPE'] == key and v == 'yes':
                                theme_dict[key].append(k)
                                theme_list1.append(theme_dict)                        

            new_theme_list = []
            for d in theme_list1:
                if d not in new_theme_list:
                    new_theme_list.append(d)

            final_theme_tag_list = []
            for item in new_theme_list:
                for key, values in item.items():
                    values_list = list(set(values))
                    dict_ = {}
                    dict_[key] = values_list
                    final_theme_tag_list.append(dict_)     

    for item in final_theme_tag_list:
        for k, v in item.items(): 
            for row in Tree.query.all():
                tree2 = Tree()
                if row.data == k:
                    tree2.parent_id = row.id
                    tree2.data = v
                    db.session.add(tree2)
                    db.session.commit()


    #build tag list from csv
    tags_list = []
    with open(MASTER_ETF_AND_TAG_LIST, encoding='utf-8') as csvf: 
            #load csv file data using csv library's dictionary reader
            csv_reader = csv.DictReader(csvf) 
            etf_master_list = []
            for row in itertools.islice(csv_reader, ROWS):
                theme_sublist = []
                etf_dict = {}
                name = row['\ufeffname']
                for k, v in row.items():
                    if v == 'yes':
                        tags_list.append(k)
                        theme_sublist.append(k)
                        etf_dict[name] = theme_sublist
                    else:
                        etf_dict[name] = theme_sublist

                etf_master_list.append(etf_dict)
       
    #dedup tags_list
    tags_list = list(dict.fromkeys(tags_list))

    list_of_tags_by_theme = []
    for result in Tree.query.all():
        if result.parent_id != None:
            subdict = {}
            theme_list = str_to_list_helper(result.data)
            id = result.id
            subdict[id] = theme_list
            list_of_tags_by_theme.append(subdict)

    for item in list_of_tags_by_theme:
        print('tag list', item)

    id_list, t_list = unpack_lod(list_of_tags_by_theme)
   
    theme_etf_list = []
    for item in etf_master_list:
        for etf, tag1_list in item.items():
            for tag in tag1_list:
                for igdits in list_of_tags_by_theme:
                    for id, tttags in igdits.items(): 
                        if tag in tttags:
                            subdict2 = {}
                            subdict2[id] = (etf, tag)
                            theme_etf_list.append(subdict2)

    for subdict2 in theme_etf_list:
        for parent_id, etf in subdict2.items():
            tree = Tree()
            tree.parent_id = parent_id
            tree.data = etf
            db.session.add(tree)
            db.session.commit()    

    click.echo('completed topdown-build')
    db.session.close()

@cli.command()
def topdown_explore():
    click.echo('explore etfs')

    choice_list = []
    selector_list = []
    for count, item in enumerate(Tree.query.filter_by(parent_id=None).all(), 1):
        print(count, item.data)
        choice_list.append(count)
        selector_list.append(item.data)

    choice_dict = {}
    choice_dict = dict(zip(choice_list, selector_list))
    choice = int(input('make selection from above . . . '))
    
    for k, v in choice_dict.items():
        if choice == k:
            selector = v

    print('selector=', selector)

    tag_list = []
    st = []

    for result in Tree.query.all():
        if str(result.data) == selector:
            for item in result.children:
                tag_list.append(item.data)

    ntag_list = tag_list.pop()
    ntag_list = ntag_list[1:]
    ntag_list = ntag_list[:-1]
    ntag = ntag_list.split(",")

    print('list for selector stocks=', ntag)

    for count, item in enumerate(ntag, 1):
        print(count, item)
        choice_list.append(count)
        selector_list.append(item)

    choice_dict = {}
    choice_dict = dict(zip(choice_list, selector_list))
    choice = int(input('make selection from above . . . '))
    
    for k, v in choice_dict.items():
        if choice == k:
            selector = v

    print('selector=', selector)

    etf_choice_list = []
    for result in Tree.query.all():
       new = result.data     
       new = new[1:]
       new = new[:-1]
       etf_and_tag_list = new.split(',')

       if selector == etf_and_tag_list[-1]:
           etf_choice_list.append(etf_and_tag_list[0])

    etf_choice_list = list(dict.fromkeys(etf_choice_list))

    comparison_list = []
    for item in etf_choice_list:
        print(item, type(item))
        ticker = LBName().query.filter_by(name=item).first()
        if ticker != None:
            # print(ticker.name, Decimal(ticker.gain_factor).quantize(Decimal('1.00')), Decimal(ticker.off_hi).quantize(Decimal('1.00')))
            row = (ticker.name, Decimal(ticker.gain_factor).quantize(Decimal('1.00')), Decimal(ticker.off_hi).quantize(Decimal('1.00')))
            comparison_list.append(row)

    topdown_presenter(result_list=comparison_list)

'''key levels'''

@cli.command()
def indices():
    db_set = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)

    index_table_list = [
            "spy_index_scan" 
            "dia_index_scan" 
            "qqq_index_scan" 
            "iyt_index_scan" 
            "mdy_index_scan" 
            "iwm_index_scan" 
            "iwc_index_scan" 
            "rsp_index_scan" 
            "soxx_index_scan"
    ]

    for item in index_table_list:
        table = db_set[item]
        table.drop()


    indices_dict = {
            "spy": 454, 
            "dia": 354, 
            "qqq": 370, 
            "iyt": 280, 
            "mdy": 500, 
            "iwm": 234, 
            "iwc": 155, 
            "rsp": 152, 
            "soxx": 474, 
    }

    for name, kl in indices_dict.items():
            t_name = name + '_' + 'index_scan'
            tablename = db_set[t_name]
            price_series = yf.download(name, period='1wk', interval='1wk')
            price_series = price_series.fillna(method='pad')  ## deals with nans ok
            current_price =   price_series['Close']
            today_price = current_price.values[2]
            if today_price >= kl:
                risk = True
            else:
                risk = False
            print(name, today_price, kl, risk)
            # tablename.insert(dict(name=name, price=round(today_price, 2), key_level=kl, risk=risk))

'''rates & leadership board funcs'''

@cli.command()
def drop_rates_tables():
    # rates_list = ['spy', 'gld', 'tlt', 'vug', 'vtv', 'iwm', 'xle', 'kre']
    # relatives_list = ['vug_to_vtv', 'spy_to_iwm', 'spy_to_xle', 'spy_to_kre']

    db_set = dataset.connect(Config.RATES_INDEX)
    for item in db_set.tables:
        table = db_set[item]
        table.drop()
        print(item)
    
    click.echo('finished dropping all rates tables')

@cli.command()
def show_rates_tables():
    click.echo('showing all rates tables')
    db_set = dataset.connect(Config.RATES_INDEX)
    for item in db_set.tables:
        print(item)

@cli.command()
@timer
@click.option('-p', 'production')
def rates(production):

    #set up environment
    if production == None:
        click.echo(f'running rates testing') #default
        rates_list = [
            'spy', 
            'tlt', 
            'gld', 
            'vug', 
            'vtv', 
            'iwm', 
            'xle', 
            'kre', 
            ]
    else:
        click.echo(f'running rates in production')
        rates_list = ['spy', 'gld', 'tlt', 'vug', 'vtv', 'iwm', 'xle', 'kre']
        production = True

    db_set = dataset.connect(Config.RATES_INDEX) 

    '''get prices and set prices into dataset db'''
    df_list = []
    for item in rates_list:
        if production:
            price_series = yf.download(item, period='5y', interval='1wk')
        else:
            price_series = yf.download(item, period='1y', interval='1wk')
        price_series = price_series.fillna(method='pad')  ## deals with nans ok
        current_price =   price_series['Close']
        test_list = []
        for item1 in current_price.iteritems():
            dict1 = {}
            dict1['name'] = item
            dict1['price'] = price=round(item1[1], 2)
            dict1['date'] = date=str(item1[0].date())
            test_list.append(dict1)
         
        df = rates_define_df_index(list1=test_list)
        df_list.append(df)
        
    '''merge absolutes based on 'date' index'''
    df = reduce(lambda df1, df2: pd.merge(df1, df2, on='date'), df_list)

    # rename cols in dataframe
    partial_col_names = []
    for item in rates_list:
        partial_col_names.append('price_' + item)
    
    new_col_names_list = []
    for name, string in zip(rates_list, partial_col_names):
        new_col_names_list.append(name)
        new_col_names_list.append(string)

    df.columns = new_col_names_list
  
    def new_build_rel_price_series(series_name=None, col1=None, col2=None):
        new_name_col_name = 'name_' + series_name
        new_name_col_price = 'price_' + series_name
        df[new_name_col_name] = series_name
        df[new_name_col_price] = df[col1]/df[col2]

    '''relatives'''
    new_build_rel_price_series(series_name='vug_to_vtv', col1='price_vug', col2='price_vtv')
    new_build_rel_price_series(series_name='spy_to_iwm', col1='price_spy', col2='price_iwm')
    new_build_rel_price_series(series_name='spy_to_xle', col1='price_spy', col2='price_xle')
    new_build_rel_price_series(series_name='spy_to_kre', col1='price_spy', col2='price_kre')
    
    print(df.head(2))
 
    engine = create_engine(Config.RATES_INDEX)
    df.to_sql('rates_table', engine)   
        
@cli.command()
def rates_api():
    click.echo('running practice rates api')
    import pprint
    # import matplotlib.pyplot as plt
    # import seaborn as sns
    # sns.set(rc={'figure.figsize':(11, 4)})

    db_set = dataset.connect(Config.RATES_INDEX)
    engine = create_engine(Config.RATES_INDEX)

    target_list = [
                'date', 
                # 'spy', 
                'price_spy', 
                'price_tlt', 
                'price_gld', 
                'price_kre', 
                'price_vug_to_vtv', 
                'price_spy_to_iwm', 
                'price_spy_to_xle', 
                'price_spy_to_kre', 
                ]
               

    df = pd.read_sql_query(f'select * from "rates_table"', con=engine)
 

    index_list = df['date'].to_list()
    index_list = [item.strftime("%m-%d-%Y") for item in index_list]
    # pprint.pprint(index_list)

    price_list = df['price_spy'].to_list()
    print(df.head(3))
    # df['price_spy'].plot(linewidth=0.5)
    # df.plot()
    plt.show(block=True)


    pprint.pprint(price_list)

    final_result_list = []
    for i, price in zip(index_list, price_list):
        dict1 = {}
        dict1['x'] = i
        dict1['y'] = price
        final_result_list.append(dict1)

    pprint.pprint(final_result_list)

@cli.command()
@timer
def load_to_db():
    from pathlib import Path
    import os

    try:
        type1 = str(input('Enter tag for etf or stocks we are entering: '))
        filename = Path(input('Enter path to ***CSV*** you would like to enter: '))
        choice = int(input(f'you picked {type1} and {filename}. if correct, press 1.'))
        if choice == 1:
            print(type(filename), filename)
            ETFDB.from_csv(type1=type1, filename=filename)
        else:
            print('bye')
    except Exception as e:
        print(e)

@cli.command()
def update_leadership_board_button_func():
    pass


@cli.command()
def show_entries():
    click.echo('show entries')
    for item in LBName.query.all():
        print(item)

@cli.command()
def visualize():
    click.echo('visualize')
    OUTPUT_FILE='lb_output.xlsx'
    df = pd.read_sql(sql = db.session.query(LBName)\
                         .with_entities(LBName.name,
                                        LBName.gain_factor,
                                        LBName.off_hi).statement, 
                 con = db.session.bind)

    print(df.head(10))
    df['gain_factor'] = df['gain_factor'].astype(float)
    df['off_hi'] = df['off_hi'].astype(float)

    df.to_excel(OUTPUT_FILE)
    click.echo(f'writing to {OUTPUT_FILE}')

@cli.command()
def delete_entry():
    click.echo('delete entries')

    ntup = ()
    clist = []

    for count, item in enumerate(LBName.query.all()):
        print(count, item, '/n')
        ntup = (count, item)
     
        clist.append(ntup)

    choice = input('enter number:   ')

    for item in clist:
        if int(choice) == item[0]:
            delete_this = item[1]
            print(delete_this.id)
    
    response = LBName.query.get(delete_this.id)
    db.session.delete(response)
    db.session.commit()


cli.add_command(topdown_build_priceset)
cli.add_command(show_entries)
cli.add_command(topdown_build)
cli.add_command(delete_entry)

cli.add_command(visualize)



if __name__ == '__main__':
    cli()