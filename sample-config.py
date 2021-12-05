import os
from dotenv import load_dotenv
basedir = os.path.abspath(os.path.dirname(__file__))
from pathlib import Path

load_dotenv()

class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'use-your-own-secret-key-here'
    
    SQLALCHEMY_DATABASE_URI = os.environ['DATABASE_URL']

    MAIN_DB = "postgresql://postgres:*************@localhost/postgres" #sqlalchemy tables
    HOLDINDEX_URL_INDEX_OF_SCANS = 'postgresql://postgres:**************@localhost:5432/holdindex_db' #dataset tables

    PG_DUMPS_URI1 = HOLDINDEX_URL_INDEX_OF_SCANS 
    PG_DUMPS_URI2 = MAIN_DB

    DB_BACKUPS = Path(basedir + '/db_backups')
    
    SQLALCHEMY_TRACK_MODIFICATIONS = False

