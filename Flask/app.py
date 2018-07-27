#import necessary libraries
#import numpy as np
import os
from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)

import pandas as pd
from sqlalchemy import create_engine, text
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from flask_sqlalchemy import SQLAlchemy

#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Database Setup
#################################################

#engine = create_engine("mysql://root:root@localhost:3306/countryind2")
engine = create_engine('mysql://root:root@localhost:3306/bootcamp')
connection = engine.connect()

#Test the connection with a sample query. 
# info = connection.execute("select * from gdp_in_usd_abbr_view where country_code = 'ARB'").fetchall()
# print(info)

# create route that renders index.html template
@app.route("/")
def home():
    #return(f"Available Routes")
    return render_template("index.html")

@app.route("/plotlychart.html")
def plotlychart():
    #return(f"Plotly Routes")
    return render_template("plotlychart.html")

@app.route("/earth.html")
def earthchart():
    #return(f"Earth Routes")
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

# Return global data.
#county_name, country_code, indicator_value, year
@app.route('/globalinfo/<country>')
def globalinfo(country): 
        global_dict = {}
        countryname = []
        countrycode = []
        indicatorvalue = []   
        year = []  
        country = '"' + country + '"'
        print(country)
    #county_name, country_code, indicator_value, year
        query = text('SELECT * FROM gdp_in_usd_abbr_view WHERE year BETWEEN 2000 AND 2017 and country_code = ' + country)
        gdp_list = connection.execute(query) 
        #gdp_list = session.query()
        #.filter_by(country_code=country).all()
    
        for name in gdp_list:
            countryname.append(name[3])
            countrycode.append(name[2])
            indicatorvalue.append(name[0])
            year.append(name[1])
        global_dict['countryname']=countryname
        global_dict['countrycode']=countrycode
        global_dict['indicatorvalue']=indicatorvalue
        global_dict['year']=year
        return jsonify(global_dict)

# Return data for population.
@app.route('/populationdata/<country>')
def populationinfo(country): 
        population_dict = {}
        countryname = []
        countrycode = []
        indicatorvalue = []   
        year = []  
        country = '"' + country + '"'
    
        query = text('SELECT * FROM total_population_abbr_view WHERE year BETWEEN 2000 AND 2017 and country_code = ' + country)
        population_list = connection.execute(query) 
      
        for name in population_list:
            countryname.append(name[3])
            countrycode.append(name[2])
            indicatorvalue.append(name[0])
            year.append(name[1])
        population_dict['countryname']=countryname
        population_dict['countrycode']=countrycode
        population_dict['indicatorvalue']=indicatorvalue
        population_dict['year']=year
        return jsonify(population_dict)

# Return data for co2 emission.
@app.route('/co2emission/<country>')
def coinfo(country): 
        coemission_dict = {}
        countryname = []
        countrycode = []
        indicatorvalue = []   
        year = []  
        country = '"' + country + '"'

        query = text('SELECT * FROM total_population_abbr_view WHERE year BETWEEN 2000 AND 2017 and country_code = ' + country)
        emission_list = connection.execute(query) 

        for name in emission_list:
            countryname.append(name[3])
            countrycode.append(name[2])
            indicatorvalue.append(name[0])
            year.append(name[1])
        coemission_dict['countryname']=countryname
        coemission_dict['countrycode']=countrycode
        coemission_dict['indicatorvalue']=indicatorvalue
        coemission_dict['year']=year
        return jsonify(coemission_dict)

@app.route('/pctrenewable/<country>')
def pctinfo(country): 
        pctrenew_dict = {}
        countryname = []
        countrycode = []
        indicatorvalue = []   
        year = []  
        country = '"' + country + '"'
    
        query = text('SELECT * FROM pct_renewable_energy_abbr_view WHERE year BETWEEN 2000 AND 2017 and country_code = ' + country)
        pctrenew_list = connection.execute(query) 
    
        for name in pctrenew_list:
            countryname.append(name[3])
            countrycode.append(name[2])
            indicatorvalue.append(name[0])
            year.append(name[1])
        pctrenew_dict['countryname']=countryname
        pctrenew_dict['countrycode']=countrycode
        pctrenew_dict['indicatorvalue']=indicatorvalue
        pctrenew_dict['year']=year
        return jsonify(pctrenew_dict)

@app.route('/pctaccess/<country>')
def pctaccess(country): 
        pctaccess_dict = {}
        countryname = []
        countrycode = []
        indicatorvalue = []   
        year = []  
        country = '"' + country + '"'

        query = text('SELECT * FROM pct_access_to_electricity_abbr_view WHERE year BETWEEN 2000 AND 2017 and country_code = ' + country)
        pctaccess_list = connection.execute(query) 
        
        for name in pctaccess_list:
            countryname.append(name[3])
            countrycode.append(name[2])
            indicatorvalue.append(name[0])
            year.append(name[1])
        pctaccess_dict['countryname']=countryname
        pctaccess_dict['countrycode']=countrycode
        pctaccess_dict['indicatorvalue']=indicatorvalue
        pctaccess_dict['year']=year
        return jsonify(pctaccess_dict)

if __name__ == "__main__":
    app.run(debug=True)

