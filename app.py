# import necessary libraries
#import numpy as np

import os
from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)

import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from flask_sqlalchemy import SQLAlchemy
#from sqlalchemy import create_engine, func, desc,select


#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Database Setup
#################################################

#################################################
# Database Setup
#################################################
# engine = create_engine("mysql://root:root@localhost:3306/bootcamp")
engine = create_engine("mysql://uqaiumbyxn0hqvsb:d2khcwawc7bhw556@etdq12exrvdjisg6.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/b96j9xd74h99bcyy")
connection = engine.connect()
#result = connection.execute("select * from countrylist")
#for row in result:
#    print("country name:", row['Country_Name'])
#connection.close()

# create route that renders index.html template
@app.route("/")
def home():
    return render_template("index.html")

@app.route("/plotlychart.html")
def plotlychart():
    return render_template("plotlychart.html")

@app.route("/earth.html")
def earthchart():
    return render_template("earth.html")

@app.route('/countrynames')
def names():
       new_name_list = {}
       countryname = []
       countrycode = []
       name_list = connection.execute("SELECT * FROM country").fetchall()
        
       for name in name_list:
           countryname.append(name[2])
           countrycode.append(name[1])
       new_name_list['countryname']=countryname
       new_name_list['countrycode']=countrycode

       return jsonify(new_name_list)
   
# Return data for rendersing the earth chart
@app.route('/gdpinfo/<countrycode>/<start_year>/<end_year>')
def gdpinfo(countrycode,start_year,end_year): 
     
   
    sqlstring = "select * from gdp_in_usd_abbr_view where country_code='"+countrycode + "' and year>="+start_year+" and year<=" + end_year

    info = connection.execute(sqlstring).fetchall()
    
    df = pd.DataFrame(info)
    df.columns=['year','countrycode','countryname','indicatorcode','indicator','data']
    df = df.iloc[:,[0,1,2,5]]


    return df.to_json(orient='records')
   
@app.route('/populationinfo/<countrycode>/<start_year>/<end_year>')
def populationinfo(countrycode,start_year,end_year): 
      
    sqlstring = "select * from total_population_abbr_view where country_code='"+countrycode + "' and year>="+start_year+" and year<=" + end_year

    info = connection.execute(sqlstring).fetchall()
    
    df = pd.DataFrame(info)
    df.columns=['year','countrycode','countryname','indicatorcode','indicator','data']
    df = df.iloc[:,[0,1,2,5]]


    return df.to_json(orient='records')     

@app.route('/co2emission/<countrycode>/<start_year>/<end_year>')
def coinfo(countrycode,start_year,end_year): 
      
    sqlstring = "select * from co2_emission_kt_abbr_view where country_code='"+countrycode + "' and year>="+start_year+" and year<=" + end_year

    info = connection.execute(sqlstring).fetchall()
    
    df = pd.DataFrame(info)
    df.columns=['year','countrycode','countryname','indicatorcode','indicator','data']
    df = df.iloc[:,[0,1,2,5]]


    return df.to_json(orient='records')      

@app.route('/pctrenewable/<countrycode>/<start_year>/<end_year>')
def pctinfo(countrycode,start_year,end_year): 
      
    sqlstring = "select * from pct_renewable_energy_abbr_view where country_code='"+countrycode + "' and year>="+start_year+" and year<=" + end_year

    info = connection.execute(sqlstring).fetchall()
    
    df = pd.DataFrame(info)
    df.columns=['year','countrycode','countryname','indicatorcode','indicator','data']
    df = df.iloc[:,[0,1,2,5]]


    return df.to_json(orient='records')      

@app.route('/pctaccess/<countrycode>/<start_year>/<end_year>')
def pctaccess(countrycode,start_year,end_year): 
      
    sqlstring = "select * from pct_access_to_electricity_abbr_view where country_code='"+countrycode + "' and year>="+start_year+" and year<=" + end_year

    info = connection.execute(sqlstring).fetchall()
    
    df = pd.DataFrame(info)
    df.columns=['year','countrycode','countryname','indicatorcode','indicator','data']
    df = df.iloc[:,[0,1,2,5]]


    return df.to_json(orient='records')      


if __name__ == "__main__":
    app.run()

