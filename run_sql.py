import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()

DATABASE = os.getenv("DATABASE_URL")
con = psycopg2.connect(DATABASE)

cursor = con.cursor()

with open("sql/01_create_tables.sql", "r") as file:
    sql = file.read()
    cursor.execute(sql)

with open("sql/02_insert_data.sql", "r") as file:
    sql = file.read()
    cursor.execute(sql)

con.commit()

cursor.close()
con.close()

