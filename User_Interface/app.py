from flask import Flask, render_template, redirect, url_for

#set up Flask-create a flask instance 
app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")
