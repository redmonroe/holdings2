from dataclasses import dataclass
import dataset
import os
from flask import Flask, jsonify
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

# @dataclass
# class Tag(db.Model):
#     id: int

#     id = db.Column(db.Integer, primary_key=True)

'''
class Person(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    addresses = db.relationship('Address', backref='person', lazy=True)

class Address(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(120), nullable=False)
    person_id = db.Column(db.Integer, db.ForeignKey('person.id'),
        nullable=False)
'''
@app.get('/')
def home():
    return 'hello_world'

@app.get('/holdindex')
def holdindex():

    from sqlalchemy import inspect

    #move to config
    result = HoldIndex.query.all()
    print(type(result))
    print(result)
    return jsonify(result)

@app.post('/lookup_index')
def lookup_index():

    table_name = request.get_json(silent=True)
    print(table_name)

    return jsonify(table_name)
    
@app.get("/scatterplot")
def scatterplot():
    # result = LBName.query.all()
    result = [{
        'x': '1', 
        'y': '10'
    }]
    print(result)

    return jsonify(result)