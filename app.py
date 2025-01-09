from flask import Flask, request, jsonify, render_template, redirect,url_for,session
from flask_bcrypt import Bcrypt
from flask_mysqldb import MySQL
import re

app = Flask(__name__)
bcrypt = Bcrypt(app)

# MySQL configuration
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'quote_db'
app.secret_key = 'books'
mysql = MySQL(app)

@app.route('/')
def home():
    return render_template('login_page.html')
    # Render your HTML login/signup page

@app.route('/home_real')
def home_real():
    
    return render_template('home_page.html')

@app.route("/book/api")
def api_book():
    cur = mysql.connection.cursor()
    cur.execute("SELECT book_id,image_url, title, summary FROM books")
    books = cur.fetchall()
    cur.close()

    data = [
        {"id": row[0],"image_url": row[1], "title": row[2], "summary": row[3], "book_url": url_for('book', book_id=row[0])  }
        for row in books
    ]
    return jsonify(data)
    
        


    
@app.route('/book/<int:book_id>,',methods=['POST', 'GET'])
def book(book_id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM books where book_id = %s", (book_id,))
    book = cur.fetchone()
    cur.close()
    
    
        
    return render_template('book-display.html', book=book)  

    
@app.route('/signup', methods=['POST', 'GET'])
def signup():
    if request.method == 'GET':
        return render_template('login_page.html')  # Render your HTML signup page

    data = request.get_json()
    name = data['name']
    email = data['email']
    password = data['password']  

    # Input validation
    if not re.match(r"[^@]+@[^@]+\.[^@]+", email):
        return jsonify({"success": False, "message": "Invalid email address."})
    if len(password) < 6:
        return jsonify({"success": False, "message": "Password must be at least 6 characters long."})

    # Hash the password
    hashed_password = bcrypt.generate_password_hash(password).decode('utf-8')

    # Insert the user into the database
    cur = mysql.connection.cursor()
    try:
        cur.execute("INSERT INTO users (name, email, password) VALUES (%s, %s, %s)", 
                    (name, email, hashed_password))
        mysql.connection.commit()
        cur.close()
        return jsonify({"success": True, "message": "Account created successfully."})
    except:
        return jsonify({"success": False, "message": "Error creating account. Email might already be registered."})

@app.route('/signin', methods=['POST', 'GET'])
def signin():
    if request.method == 'GET':
        return render_template('login_page.html')  # Render your HTML signin page

    if request.content_type == 'application/json':
        data = request.get_json()
        email = data['email']
        password = data['password']
        print(email)

        # Check if user exists
        cur = mysql.connection.cursor()
        cur.execute("SELECT password FROM users WHERE email = %s", (email,))
        user = cur.fetchone()
        cur.close()

        if user and bcrypt.check_password_hash(user[0], password):
            print("User authenticated successfully")
            cur = mysql.connection.cursor()
            cur.execute("SELECT user_id FROM users WHERE email = %s", (email,))
            user_id = cur.fetchone()
            session['user_id'] =  user_id # Set session variabl
            return jsonify({"success": True, "redirect": url_for('home_real')})
        else:
            print("Invalid email or password")
            return jsonify({"success": False, "message": "Invalid email or password."})
    else:
        return jsonify({"success": False, "message": "Request must be JSON and Content-Type must be 'application/json'."})

    
if __name__ == '__main__':
    app.run(debug=True)