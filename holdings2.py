from dataclasses import dataclass
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

# tags = db.Table('tags',
#     db.Column('tag_id', db.Integer, db.ForeignKey('tag.id'), primary_key=True),
#     db.Column('ETF_id', db.Integer, db.ForeignKey('ETF.id'), primary_key=True))


# class Node(Base):
#     __tablename__ = 'node'
#     id = Column(Integer, primary_key=True)
#     parent_id = Column(Integer, ForeignKey('node.id'))
#     data = Column(String(50))
#     children = relationship("Node")

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

@app.get("/scatterplot")
def scatterplot():
    # result = LBName.query.all()
    result = [{
        'x': '1', 
        'y': '10'
    }]
    print(result)

    return jsonify(result)