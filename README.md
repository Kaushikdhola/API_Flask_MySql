# Data fetching and storing with Python Flask and Mysql

This assignment is divided into two parts:

- Create an API which will pass all the details from orders table to web page in a representational view.
- Write a python script to retrive records from the past one hour and store it in the excel file. After that send this excel file as an attachment to particular email id.

Orders table contains following columns:
```
    productID 
    product_name
    product_price
    quantity
    total_cost
    order_date_time
```
- To get started, you have to execute the **orders.sql file** to create the table and insert particular data in the table.

## File Structure
- Main.Py
- Templates -->
   ```
     1. Index.Html
     2. One_hour.html
   ```
- Ouput_UI -->
   ```     
     All_Data.JPG
     One_Hour_Data.JPG
   ```
- orders.sql
- orders_data.csv

## Prerequisites
- Python
- Mysql
- Flask
- Stable internet connection 

## Installation

Install following libraries with python.
```python
pip install mysql
pip install flask
pip install mimetypes
pip install email
pip install smtplib
pip install pandas
```

## How to run the project

Note: if you want to run the project in local system then some code changes required in database connection arguments (such as db username, password) and also changes in local path to store and retrive excel file.

Post all the required changes go to project directory.

Execute the Main.py file.
 
 ```python     
     py Main.py
 ```

You will be able to see a **index.html** web page containing order table data in a tabular format and below that **View Past One hour Data button**. 

The index.html web page shows all the data stored inside the orders table. 

If you want to see the data stored in past one  hour then click on the **View Past One hour Data button**. 

By clicking on the button it will redirect you to **One_hour.html** web page that contains orders table data that are updated in last one hour in the tabular format.

Simultaneously this one hour orders table data are stored in excel file (.csv) and sent as an attachment to specified email address(email address is specified in the code). 
