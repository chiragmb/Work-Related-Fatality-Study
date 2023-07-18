import db
from mysql.connector import Error
import mysql.connector
import pandas as pd
import numpy as np


# Task 1: Read the given dataset
def read_data_from_csv():
    # df =read the 'fatality.csv' file
    df = pd.read_csv('fatality.csv')
    return df


# Task 2: Clean the given dataset
def data_cleaning():
    # do not edit the predefined function name
    df = read_data_from_csv()
    # Remove the 'Unnamed' column
    df = df.drop(columns='Unnamed')

    return df


# Task 3: Export the cleaned dataset to "fatalities_cleaned.csv"
def export_the_dataset():
    # do not edit the predefined function name
    df = data_cleaning()
    # write your code to export the cleaned dataset and set the index=false and return the same as 'df'
    df.to_csv('fatalities_cleaned.csv', index=False)


# TASK 4: Load the Cleaned dataset 'fatalities_cleaned.csv' to the database provided.
# follow the instruction in the Task 4 description and complete the task as per it.


HOST = 'localhost'  # Replace with the actual MySQL server host address
USERNAME = 'ba6d1eeb'
PASSWORD = "Cab#22se"
DATABASE = 'ba6d1eeb'

connection = mysql.connector.connect(
    host=HOST,
    user=USERNAME,
    password=PASSWORD,
    database=DATABASE
)

cursor = connection.cursor()

table_name = 'fatalities_cleaned'
columns = ['id', 'incident_date', 'day_of_week',
           'city', 'state', 'description', 'plan', 'citation']

# load_query = f"""
#     LOAD DATA INFILE 'fatalities_cleaned.csv'
#     INTO TABLE `fatalities_cleaned`
#     FIELDS TERMINATED BY ','
#     ENCLOSED BY '"'
#     IGNORE 1 LINES
# """


connection.commit()

cursor.close()
connection.close()


# check if mysql table is created using "fatalities_cleaned"
# Use this final dataset and upload it on the provided database for performing analysis in  MySQL
# To run this task click on the terminal and click on the run project
