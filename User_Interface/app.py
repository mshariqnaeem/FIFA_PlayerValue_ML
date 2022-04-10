#Import dependenceies
from flask import Flask, render_template, redirect, url_for



#Initialization
app = Flask(__name__)

#Define home page
@app.route("/")
def home():
    return render_template("index.html", image_url = [])

#Run app
if __name__ == "__main__":
    app.run()