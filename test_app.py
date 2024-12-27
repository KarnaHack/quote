# Store this code in 'app.py' file

from flask import Flask, render_template,jsonify, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
from flask import stream_template

app = Flask(__name__)


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'quote_db'
app.secret_key = 'books'
mysql = MySQL(app)

@app.route('/')
@app.route('/signin', methods =['GET', 'POST'])
def signin():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
		username = request.form['username']
		password = request.form['password']
		print(f"Login attempt with username: {username} and password: {password}")
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM accounttt WHERE username = % s AND password = % s', (username, password, ))
		account = cursor.fetchone()
		if account:
			session['loggedin'] = True
			session['id'] = account['id']
			session['username'] = account['username']
			print(f"Logged in successfully! Session: {session}")
			msg = 'Logged in successfully !'
			return url_for('home')
		
	else:
		

		print("Incorrect username / password!")
		msg = 'Incorrect username / password !'
		return render_template('login_page.html', msg = msg)

@app.route('/logout')
def logout():
	print(f"Logging out user: {session.get('username')}")
	session.pop('loggedin', None)
	session.pop('id', None)
	session.pop('username', None)
	return redirect(url_for('login'))

@app.route('/signup', methods =['GET', 'POST'])
def signup():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form:
		username = request.form['username']
		password = request.form['password']
		email = request.form['email']
		print(f"Registration attempt with username: {username}, password: {password}, email: {email}")
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		try:
			cursor.execute('SELECT * FROM accounttt WHERE username = % s', (username,))
			account = cursor.fetchone()
			if account:
				print("Account already exists!")
				msg = 'Account already exists !'
			elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
				print("Invalid email address!")
				msg = 'Invalid email address !'
			elif not re.match(r'[A-Za-z0-9]+', username):
				print("Username must contain only characters and numbers!")
				msg = 'Username must contain only characters and numbers !'
			elif not username or not password or not email:
				print("Please fill out the form!")
				msg = 'Please fill out the form !'
			else:
				cursor.execute("INSERT INTO accounttt (username, password, email) VALUES (%s, %s, %s)", (username, password, email))
				mysql.connection.commit()
				print("You have successfully registered!")
				msg = 'You have successfully registered !'
		except MySQLdb.Error as e:
			print(f"Error: {e}")
			msg = 'An error occurred while registering. Please try again.'
		finally:
			cursor.close()
	elif request.method == 'POST':
		print("Please fill out the form!")
		msg = 'Please fill out the form !'
		return render_template('register.html', msg = msg)

@app.route('/home')
def home():
	return stream_template('home_page.html')






if __name__ == '__main__':
    app.run(debug=True)