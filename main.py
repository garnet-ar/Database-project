import psycopg2

try:
    conn = psycopg2.connect(host = 'localhost',
                            user = 'postgres',
                            database = 'Database_project',
                            password = '123',
                            port='5435')
    print('Успешно подключено к Базе Данных')

    cur = conn.cursor()
    cur.execute('SELECT * FROM suppliers ')
    data = cur.fetchall()
    for i in data:
        print(i)
except Exception as err:
    print(err)
