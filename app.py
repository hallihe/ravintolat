from flask import Flask
from flask import redirect, render_template, request
from flask_sqlalchemy import SQLAlchemy

from os import getenv
from sqlalchemy.sql import text


app = Flask(__name__)
app.secret_key = getenv("SECRET_KEY")

print("database_url=",getenv("DATABASE_URL"))
app.config["SQLALCHEMY_DATABASE_URI"] = getenv("DATABASE_URL")
db = SQLAlchemy(app)

@app.route("/")
def index():

    result = db.session.execute(text("SELECT * FROM restaurants"))
    restaurants = result.fetchall()
    for restaurant in restaurants:
        print("restaurant=",restaurant)
    result = db.session.execute(text("SELECT * FROM restaurants"))
    restaurants = result.fetchall()
    return render_template("index.html", count=len(restaurants), restaurants=restaurants) 

#@app.route("/login",methods=["POST"])
@app.route("/login")
def login():
 
   print("login TBD")
   return redirect("/")
    
   
@app.route("/logout")
def logout():
    print("logut TBD")
    #del session["username"]
    return redirect("/")


