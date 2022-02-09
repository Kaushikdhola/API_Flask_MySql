import mimetypes
from flask import Flask, render_template
import mysql.connector
import pandas as pd
import smtplib
from email import encoders
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

try:

    #establishing connection to mysql server and database 
    db = mysql.connector.connect(host='localhost', user='root', password='kaushik12', database='oneture')
    print("Connected to database")
except:
    print("unable to connect to the database")

cursor = db.cursor()
subject = "Data from Sql table to Excel file"
text = "This email is contains attached excel file that consist of data fetched from sql database."
send_to = "kaushikdhola02@gmail.com"
send_from = "kdhola1999@gmail.com"
password = "Kd1234567"

app = Flask(__name__)

#Fetches all the records from order table and display it in the index.html web page
@app.route('/', methods=['GET'])
def index():
    
    #Executes select query to retrive all the records
    cursor.execute("SELECT * FROM orders")
    data = cursor.fetchall()

    #sends all the records to index.html web page using data object 
    return render_template('index.html', data=data)

#Fetches records from order table updated in last one hour and display it in the One_hour.html web page

@app.route('/One_hour', methods=['GET'])
def One_hour():

    #Executes select query to retrive records updated in last one hour
    cursor.execute("select *from orders where  order_date_time >= now() - interval 1 hour")
    data = cursor.fetchall()
    
    #calls  SqlData_to_Excelfile function to store data into excel file
    SqlData_to_Excelfile(data)

    #sends  fetched records to One_hour.html web page using data object 
    return render_template('One_hour.html', data=data)


#Data updated in last one hour are stored in the excel file

def SqlData_to_Excelfile(data):
    
    #store data into dataframe object derived from pandas library
    df = pd.DataFrame(data)

    #convert dataframe to csv file
    df.to_csv(r'./orders_data.csv', index=False)
    Send_mail()

#Excel file send as an attachment to the specified email address

def Send_mail():

    emailfrom = "kdhola1999@gmail.com"
    emailto = "kaushikdhola02@gmail.com"
    fileToSend = r"./orders_data.csv"
    username = "kdhola1999@gmail.com"
    password = "Kd1234567"

    msg = MIMEMultipart()
    msg["From"] = emailfrom
    msg["To"] = emailto
    msg["Subject"] = "Data from Sql table to Excel file"
    msg.preamble = "This email is contains attached excel file that consist of data fetched from sql database."

    ctype, encoding = mimetypes.guess_type(fileToSend)
    if ctype is None or encoding is not None:
        ctype = "application/octet-stream"

    maintype, subtype = ctype.split("/", 1)

    if maintype == "text":
        fp = open(fileToSend)
        # Note: we should handle calculating the charset
        attachment = MIMEText(fp.read(), _subtype=subtype)
        fp.close()
    else:
        fp = open(fileToSend, "rb")
        attachment = MIMEBase(maintype, subtype)
        attachment.set_payload(fp.read())
        fp.close()
        encoders.encode_base64(attachment)
    attachment.add_header("Content-Disposition", "attachment", filename="orders_data.csv")
    msg.attach(attachment)

    server = smtplib.SMTP("smtp.gmail.com:587")
    server.starttls()
    server.login(username, password)
    server.sendmail(emailfrom, emailto, msg.as_string())
    server.quit()


if __name__ == '__main__':
    app.run(debug=True)
