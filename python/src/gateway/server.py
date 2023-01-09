# gridfs allows us to store larger files
# pika allows us to interface with rabbitMQ
import os, gridfs, pika, json
from flask import Flask, request
# PyMongo will allow us to interface with the MongoDB database
from flask_pypongo import PyMongo
from auth import validate
from auth_svc import access
from storage import util

server = Flask(__name__)
server.config["MONGO_URI"] = "mongodb://host.minikube.internal:27017/videos"


mongo = PyMongo(server)
