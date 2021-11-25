from sqlalchemy import inspect
from datetime import date
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
    tag_list = []
    for item in list_of_dicts:
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

def HIndex_price_updater(tablename=None, filename=None):
    with open(filename, encoding='utf-8') as csvf: 
        #load csv file data using csv library's dictionary reader
        csvReader = csv.DictReader(csvf) 

        for count, row in enumerate(csvReader, 1):
            item = LBName()
            print(row)
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
                off_hi = off_hi * 100
                print(count, item.name, current_price, gain_factor, off_hi)
                tablename.insert(dict(name=item.name, off_hi=off_hi, gain_factor=gain_factor))
            except Exception as e:
                print(e, f'unable download ticker {item.name}')



@click.group()
def cli():
    pass

@cli.command()
def config_test():
    print(Config.HOLDINDEX_URL_INDEX_OF_SCANS)

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
    for count, item in enumerate(LBName.query.all(), 1):
        print(count, item)
        if count == 5:
            break

    print('******************************************TREE************************************************')
    # result = LBName.query.all()
    for count, item in enumerate(Tree.query.all(), 1):
        print(count, item)
        if count == 5:
            break


def index_builder_dev(filename=None):
    print(f'running scan and creating index entry for {filename}')    
    db_set = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)

    if filename == 'LBOARD_BROAD_ASSET_CLASS_1121.csv':
        file_str = 'leaders & laggards'
    else:
        file_str = filename.split('/')
        file_str = file_str[1].split('.')
        file_str = file_str[0]

    date_now = date.today()
    tablename = file_str + '_' + str(date_now)
    tablename = db_set[tablename]
    HIndex_price_updater(tablename=tablename, filename=filename)

    hi = HoldIndex()
    hi.date = date_now
    hi.content_note = file_str
    db.session.add(hi)
    db.session.commit()
        
    for item in HoldIndex.query.all():
        print(item)

@cli.command()
def drop_single_dataset_table_manual():
    
    db_set = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)
    table = db_set['index_components/fang_names.csv_<class datetime.date>']
    table.drop()

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
                name = row['Ticker']
                name = normalize_ticker(name)
                sector = row['Sector']
                price = yf.download(name, period='1y', interval='1wk')
                current_price = price['Close'].tail(1).item()
                current_date = str(price.index[-1])
                table = db[name]
                price = price['Close']
                price = round(price, 2)
                date = price.index
                for p, d in zip(price, date):
                    print('hi', str(p), d)
                    table.insert(dict(name=name, date=d, price=p, tag=tag, sector=sector))
     
    get_csv('spy', SPY_HOLDINGS_CSV, wait=1)
    
@cli.command()
def topdown_build():
    click.echo('build top down scan')

    table_names = inspect(db.engine).get_table_names()
    if 'tree' in table_names:
        Tree.__table__.drop(db.engine)

    db.create_all()     

    with open(MASTER_ETF_AND_TAG_LIST, encoding='utf-8') as csvf: 
            #load csv file data using csv library's dictionary reader
            csv_reader = csv.DictReader(csvf) 
            theme_list = []
            for row in itertools.islice(csv_reader, ROWS):
                theme = row['TYPE']
                print(theme)
                theme_list.append(theme)

    final_theme_list_from_csv = list(dict.fromkeys(theme_list))
        
    # build top-level themes_list from csv and persist to DB
    for theme in final_theme_list_from_csv:
        tree = Tree()
        tree.parent_id = None
        tree.data = theme
        db.session.add(tree)
        db.session.commit()
    
    #build theme-tag group, assign tags to themes, persist to db
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

    tags_list = []

    #build tag list from csv
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
        # print(item, type(item))
        ticker = LBName().query.filter_by(name=item).first()
        if ticker != None:
            # print(ticker.name, Decimal(ticker.gain_factor).quantize(Decimal('1.00')), Decimal(ticker.off_hi).quantize(Decimal('1.00')))
            row = (ticker.name, Decimal(ticker.gain_factor).quantize(Decimal('1.00')), Decimal(ticker.off_hi).quantize(Decimal('1.00')))
            comparison_list.append(row)

    topdown_presenter(result_list=comparison_list)

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
@timer
def update_prices_ll():
    click.echo('updating leaders & laggard prices')
    
    init_table(t_name='lb_name')  
    
    for item in ETFDB.query.filter_by(type1='l_and_l').all():
        type1 = item.type1
        print(item.name, item.type1)

    db_set = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)

    date_now = date.today()
    tablename = type1 + '_' + str(date_now)
    print(tablename)
    tablename = db_set[tablename]
    HIndex_price_updater(tablename=tablename, filename=filename)

    hi = HoldIndex()
    hi.date = date_now
    hi.content_note = type1
    db.session.add(hi)
    db.session.commit()
        









    # index_builder_dev(filename=csv_file)
    
@cli.command()
@timer
def update_prices_fang():
    click.echo('updating MEGACAP TECH prices')
    
    init_table(t_name='lb_name')

    csv_file='index_components/fang_names.csv'
    index_builder_dev(filename=csv_file)

@cli.command()
@timer
def update_prices_soxx():
    click.echo('updating soxx prices')

    init_table(t_name='lb_name')

    csv_file='index_components/soxx.csv'
    index_builder_dev(filename=csv_file)


@cli.command()
@timer
def update_prices_homies():
    click.echo('updating homies prices')

    init_table(t_name='lb_name')

    csv_file='index_components/itb.csv'
    index_builder_dev(filename=csv_file)

@cli.command()
@timer
def update_prices_mj():
    click.echo('updating weed prices')

    init_table(t_name='lb_name')

    csv_file='index_components/mj.csv'
    index_builder_dev(filename=csv_file)

@cli.command()
@timer
def update_prices_retail():
    click.echo('updating xrt prices')

    init_table(t_name='lb_name')

    csv_file='index_components/retail_xrt.csv'
    index_builder_dev(filename=csv_file)

@cli.command()
@timer
def update_prices_kweb():
    click.echo('updating kweb prices')

    init_table(t_name='lb_name')

    csv_file='index_components/kweb.csv'
    index_builder_dev(filename=csv_file)

@cli.command()
@timer
def update_prices_igv():
    click.echo('updating software prices')

    init_table(t_name='lb_name')

    csv_file='index_components/igv.csv'
    index_builder_dev(filename=csv_file)



@cli.command()
@timer
def update_prices_pm():
    click.echo('updating precious metals (GDX) prices')

    init_table(t_name='lb_name')
    csv_file='index_components/gdx_names.csv'

    with open(csv_file, encoding='utf-8') as csvf: 
        #load csv file data using csv library's dictionary reader
        csvReader = csv.DictReader(csvf) 

        for count, row in enumerate(csvReader, 1):
            item = LBName()
            name = row['\ufeffname']
            normalized_name = name.split(' ')
            item.name = normalized_name[0]
            print(item.name)
            if normalized_name[1] == 'US':
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

@cli.command()
@timer
def update_all():
    click.echo('updating all')

    update_prices_ll
    update_prices_fang()
    update_prices_soxx()
    update_prices_mj()
    update_prices_homies()
    update_prices_retail()
    update_prices_igv()
    update_prices_kweb()
    # update_prices_pm()

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

cli.add_command(update_prices_ll)

cli.add_command(update_prices_fang)
cli.add_command(update_prices_pm)
cli.add_command(update_prices_soxx)
cli.add_command(update_prices_homies)
cli.add_command(update_prices_mj)
cli.add_command(update_prices_retail)
cli.add_command(update_prices_kweb)
cli.add_command(update_all)



cli.add_command(visualize)


if __name__ == '__main__':
    cli()