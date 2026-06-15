import sqlite3
import pandas as pd

def get_connection():
    return sqlite3.connect("../data/telco.db")

def run_query(query):
    conn = get_connection()
    result = pd.read_sql(query, conn)
    conn.close()
    return result