import json
import string
from fastapi import FastAPI
from typing import Union

from flask import Blueprint, render_template, request, session, make_response, jsonify
from flask import Flask
from flask import render_template
from flask import request
from flask import redirect
from flask import url_for
import re
from datetime import datetime
import mysql.connector
from mysql.connector import FieldType
from numpy import require
import connect
from fastapi.middleware.cors import CORSMiddleware

dbconn = None
connection = None

app = FastAPI(openapi_url="/api/openapi.json")

def setup_cors(app: FastAPI):
    app.add_middleware(
        CORSMiddleware,
        # Allow access from localhost, another IPs
        allow_origin_regex=r"https?://(localhost|192\.168\.1\.\d+|192\.168\.20\.\d+|10\.22\.0\.\d+):\d+",
        allow_credentials=True,
        allow_methods=["*"],
        allow_headers=["*"],
        max_age=86400,
    )
   
setup_cors(app)

def getCursor():
    global dbconn
    global connection
    connection = mysql.connector.connect(user=connect.dbuser, \
    password=connect.dbpass, host=connect.dbhost, \
    database=connect.dbname, autocommit=True)
    dbconn = connection.cursor()
    return dbconn

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}


@app.get("/genres")
def genres():
    connection = getCursor()
    connection.execute("SELECT * FROM genre;")
    genreList = connection.fetchall()
    print(genreList)

    key_value_data = []
    key = ["id","name","image_background", "description" ]
    for row in genreList:
          row1 = dict(zip(key,row))
          key_value_data.append(row1)

    return {"count":0, "results":key_value_data}




@app.get("/listworks")
def listworks(genres: Union[int, None] = None):
    connection = getCursor()
    if genres:
        sql = """SELECT w.worksid, w.worktitle, w.worklink, w.piclink, w.videolink, w.description, w.rate 
            FROM works w join genrebridge using(worksid) join genre using(genreid) 
            where genreid like %s;  """
        parameters = (genres,) 
        connection.execute(sql,parameters)
    else:
        sql = """SELECT * FROM works"""
        connection.execute(sql)

    print(sql + "SSSSSSSSSSSSSSSSSSSSSSSS")
    worksList = connection.fetchall()
    print(worksList)
    
    key_value_data = []
    key = ["id","name","worklink", "background_image", "videolink", "description", "rate" ]
    for row in worksList:
          row1 = dict(zip(key,row))
          key_value_data.append(row1)

    return {"count":0, "results":key_value_data}