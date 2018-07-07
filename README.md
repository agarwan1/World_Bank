# World_Bank

Data
------
The data from this project is from the World Bank. 
The primary World Bank collection of development indicators, compiled from officially-recognized international sources. It presents the most current and accurate global development data available, and includes national, regional and global estimates.
[World Development Indicators](https://datacatalog.worldbank.org/dataset/world-development-indicators)


Database
------
Utilized MySQL to store and manipulate data from the CSV provided from the World Bank. 
In the future, AWS can be used to centralize the database to share among multiple users. More information about AWS RDS can be found in the AWS folder. 


Flask
------
Python's Flask web server has been used to render the data to the browser.
Flask was initially tested and created in Jupyter Notebook.  Each route was tested to verify that the data was being rendered correctly. The Jupyter code was placed in a Python editor such as Pycharm to save to the app.py file. 

If you want to run the Jupyter Notebook to test the flask, you can utilize a virtual environment from Anaconda Prompt. Activate your virtual environment.

The following dependencies are needed:
*Flask 
*SQL Alchemy 
*Flask-SQLAlchemy 

Pip install is used to install Python packages in Anaconda prompt, such as the below command:
pip install mysqlclient 

You can open Jupyter Notebook from Anaconda prompt using the following command: 
Jupyter Notebook flask_sqlalchemy

Flask can be run by going to your command line. Since we are using MySQL database, mysqlclient will need to be installed. You may also need to install  flask_sqlalchemy.
	pip install mysqlclient 
	pip install flask_sqlalchemy
If you do not pip install these modules, you will receive the following error: No module named 'flask_sqlalchemy'.
Then, you can run the flask in your command line with the following command:
python <file path.py> 


Another Python that could have been used with MySQL is PyMongo. (pymongo==3.6.1)