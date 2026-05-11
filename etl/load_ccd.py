import psycopg2

# Replace with your actual PostgreSQL credentials
conn = psycopg2.connect(
    host="localhost",
    database="Public_School_Project",
    user="postgres",
    password="P@$$w0rd26!"
)

print("Connection successful!")

conn.close()