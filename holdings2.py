from sqlalchemy import inspect
from dataclasses import dataclass
from sqlalchemy import inspect
import dataset
import os
from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
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
