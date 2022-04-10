from unicodedata import name
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from models import db, InfoModel
# ,render_template, redirect, url_for


#set up Flask-create a flask instance 
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:ironwarriors@localhost/FIFA_Database'

# pass app through SQLAlchemy
db = SQLAlchemy(app)

class Model_name(db.Model):
    __tablename__ = 'Fifa_cleaned'
    
    Player_Id = db.Column(db.Integer, primary_key = True)
    Player_Name = db.Column(db.String())
    Age = db.Column(db.Integer())
    
    def __init__(self) -> None:
        super().__init__(self, Name,Age):
            self.name = Player_Name
            self.age = Age
    
    
    def __repr__(self):
        return f"{self.name}:{self.age}"        


@app.route("/")
def home():
    return render_template('index.html')


if __name__=='__main__':
    app.run()
    