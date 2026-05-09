import psycopg2
import os
from dotenv import load_dotenv


load_dotenv()

DATABASE = os.getenv("DATABASE_URL")

conect = psycopg2.connect(DATABASE)

print("Conectado a base de dados")
conect.close()
