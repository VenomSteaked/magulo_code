from flask import Flask, render_template, request, session, redirect
from flaskext.mysql import MySQL
from werkzeug.security import generate_password_hash, check_password_hash
import re 

app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'daetworshippers'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

app.secret_key = 'why would I tell you my secret key?'

mysql = MySQL(app)
@app.route('/signup',methods=['POST'])
def post_signup():
    # read ui values from form
    _name = request.form['inputName']
    _email = request.form['inputEmail']
    _password = request.form['inputPassword']
    # validate the received values
    fail = False
    if _name and _email and _password:
        print("all fields good")
    else:
        error='Fields empty!'
        msg="Try again"
        page="/signup"
        fail = True
    if len(_name) > 45:
        error='Name too long! Max 45 characters'
        msg="Try again"
        page="/signup"
        fail = True
    elif len(_email) > 45:
        error='Email address too long! Max 45 characters'
        msg="Try again"
        page="/signup"
        fail = True
    check = "@" in _email
    if check == False:
        error='Invalid email format!'
        msg="Try again"
        page="/signup"
        fail = True
    if fail == True:
        return render_template('error.html', error=error, msg=msg, page=page)
    check = "lancesdaet@xs.edu.ph" in _email
    if check == True: 
        return render_template('daet.html')
    # MySQL configurations 
    conn = mysql.connect()
    cursor = conn.cursor()
    _hashed_password = generate_password_hash(_password)
    cursor.callproc('sp_makeUser',(_name,_email,_hashed_password))
    data = cursor.fetchall()
    print('debug stuff',data)
    if len(data) == 0:
        conn.commit()
        return render_template('success.html', success='User created successfully!', page="/signin", msg='Sign in')
    else:
        return render_template('error.html', error=str(data[0][0]), page="/signup", msg="Try again")
@app.route('/signup')
def signup():
    return render_template('signup.html')    

@app.route('/signin')
def showSignin():
    return render_template('signin.html')

@app.route('/validateLogin', methods=['POST'])
def validateLogin():
    try:
        _username = request.form['inputEmail']
        _password = request.form['inputPassword']
        con = mysql.connect()
        cursor = con.cursor()
        cursor.callproc('sp_validateLogin', (_username,))
        data = cursor.fetchall()
        if len(data) > 0:
            if check_password_hash(str(data[0][3]), _password):
                session['user'] = data[0][0]
                return redirect('/userhome')
            else:
                return render_template('error.html', error='Wrong Email address or Password', page="/signin", msg="Try again")
    except Exception as e:
        return render_template('error.html', error=str(e))

@app.route('/userhome')
def userHome():
    if session.get('user'):
        return render_template('userhome.html')
    else: 
        return render_template('error.html',error = 'Unauthorized Access', page="/", msg="Go home")

@app.route('/logout')
def logout():
    session.pop('user',None)
    return redirect('/')

@app.route("/")
def main():
    return render_template('index.html')
if __name__ == "__main__":
        app.run(debug=True)

 	
