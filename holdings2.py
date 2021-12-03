from sqlalchemy import inspect
from dataclasses import dataclass
from sqlalchemy import inspect
from datetime import date
import dataset
import os
from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
import yfinance as yf
from config import Config

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = "postgresql://postgres:postgres@localhost/postgres"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)
migrate = Migrate(app, db)

@dataclass
class LBName(db.Model):
    id: int
    name: str
    description: str
    hi52: str
    lo52: str
    current_price: str
    gain_factor: str
    off_hi: str

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64))
    description = db.Column(db.String(64))
    hi52 = db.Column(db.String(64))
    lo52 = db.Column(db.String(64))
    current_price = db.Column(db.String(64))
    gain_factor = db.Column(db.String(64))
    off_hi = db.Column(db.String(64))

@dataclass
class HoldIndex(db.Model):
    id: int
    date: str
    content_note: str

    id = db.Column(db.Integer, primary_key=True)
    date = db.Column(db.String(64))
    content_note = db.Column(db.String(64))

@dataclass
class Tree(db.Model):
    id: int
    parent_id: str
    data: str
    children: str

    __tablename__ = 'tree'
    id = db.Column(db.Integer, primary_key=True)
    parent_id = db.Column(db.Integer, db.ForeignKey('tree.id'))
    data = db.Column(db.String(64))
    children = db.relationship('Tree')


@dataclass
class ETFDB(db.Model):
    id: int
    name: str
    type1: str

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64))
    type1 = db.Column(db.String(64))

    @staticmethod
    def from_csv(type1, filename=None):
        print('hello world')
        import csv
        with open(filename, encoding='utf-8') as csvf: 
            
            #load csv file data using csv library's dictionary reader
            csvReader = csv.DictReader(csvf) 

            for count, row in enumerate(csvReader, 1):
                item = ETFDB()
                item.type1 = type1
                # print(row)
                try:
                    item.name = row['\ufeffname']
                except KeyError as e:
                    print(f'ufeff_error: {e}, will attempt to try row[name]')
                    item.name = row['name']
                try:                
                    print(count, item.name, item.type1)
                    db.session.add(item)
                    db.session.commit()
                except Exception as e:
                    print(e, f'failed to load {item.name}')

        db.session.close()

'''routes'''

@app.get('/')
def home():
    return 'hello_world'

@app.get('/holdindex')
def holdindex():

    result = HoldIndex.query.all()
    print(type(result))
    print(result)
    return jsonify(result)

@app.post('/lookup_index')
def lookup_index():

    db_dataset = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)
 
    table_name = request.get_json(silent=True)

    for item in db_dataset.tables:
        if item == table_name:
            result = table_name

    results = db_dataset[result].all()
    result_list = [item for item in results]

    return jsonify(result_list)

@app.get('/button_names')
def button_names():
    result = ETFDB.query.all()
    result_list = [item.type1 for item in result]
    result_list = list(dict.fromkeys(result_list))
    return jsonify(result_list)

@app.get('/wscan/<name>')
def wscan(name=None):
    from cli import init_table

    init_table(t_name='lb_name')
    
    db_set = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)

    type1 = name
    date_now = date.today()
    tablename = type1 + '_' + str(date_now)
    print(tablename)
    tablename = db_set[tablename]
    for item in ETFDB.query.filter_by(type1=type1).all():
        temp_listing = LBName()
        temp_listing.name = item.name
        try:                
            price = yf.download(item.name, period='1y', interval='1wk')
            current_price = price['Close'].tail(1).item()
            lo52 = price['Close'].min()
            hi52 = price['Close'].max()
            gain_factor = current_price/lo52
            off_hi = (current_price/hi52) -1
            off_hi = off_hi * 100
            print(temp_listing.name, current_price, gain_factor, off_hi)
            tablename.insert(dict(name=temp_listing.name, off_hi=off_hi, gain_factor=gain_factor))
        except Exception as e:
            print(e, f'unable download ticker {temp_listing.name}')
 
    hi = HoldIndex()
    hi.date = date_now
    hi.content_note = type1
    db.session.add(hi)
    db.session.commit()

    return jsonify(type1)

@app.get('/backup')
def backup():
    from datetime import datetime as dt
    import os
    bu_time = dt.now()
    print(Config.PG_DUMPS_URI1, Config.DB_BACKUPS)
    print(Config.PG_DUMPS_URI2, Config.DB_BACKUPS)
    os.system(f'pg_dump --dbname={Config.PG_DUMPS_URI1} > "./db_backups/holdings2_index_of_scansdb_dump{bu_time.month}{bu_time.day}{bu_time.year}{bu_time.hour}.sql"')
    os.system(f'pg_dump --dbname={Config.PG_DUMPS_URI2} > "./db_backups/holdings2_maindb_dump{bu_time.month}{bu_time.day}{bu_time.year}{bu_time.hour}.sql"')
    print(bu_time, 'dumping db to /db_backups')

    return jsonify(str(bu_time))

@app.get('/rates')
def rates():
    import pprint
    db_dataset = dataset.connect(Config.HOLDINDEX_URL_INDEX_OF_SCANS)

    '''
    series =  [{
        name: "tlt whatever",
        data: [
        { category: "A", value: Math.random() },
        { category: "B", value: Math.random() },
        { category: "C", value: Math.random() },
        ],
    }]
    '''
    rates_list = [
                    'tlt weekly5y', 
                    'gld weekly5y', 
                    'vug_to_vtv',   
                    'spy_to_iwm',
                    'spy_to_xle',
                    'spy_to_kre', 
                    'spy weekly5y'
                    ]

    # rates_list = ['tlt weekly5y']
    # rates_list = ['gld weekly5y']

    print(rates_list)

    def rates_wrapper(name=None):
        result = db_dataset[name].all()


        data_list = []
        for item in result:
          data_list.append(item) 

        data_list = data_list[:250]
        print(name, len(data_list))


        # data_list = []
        # for item in result:
        #     dict1 = {}
        #     dict1['price'] = item['price']
        #     dict1['date'] = item['date']
        #     data_list.append(dict1) 

        data_dict = {
            'name': name, 
            'data': data_list
        }

        # pprint.pprint(data_dict)    

        final_result_list.append(data_dict)

    final_result_list = []
    for table in db_dataset.tables:
        # print(table)
        for i in range(len(rates_list)):
            if str(table) == rates_list[i]:
                name = rates_list[i]
                rates_wrapper(name=name)

    
    return jsonify(final_result_list)

