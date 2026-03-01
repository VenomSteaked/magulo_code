from flask import Flask, render_template, request, session, redirect, url_for
from flaskext.mysql import MySQL
from werkzeug.security import generate_password_hash, check_password_hash

# flask app creation
app = Flask(__name__)

# connecting to mysql database
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'daetworshippers'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql = MySQL(app)
# secret key for userhome
app.secret_key = 'why would I tell you my secret key?'


@app.route('/signup',methods=['POST'])
def post_signup():
    # read ui values from form
    _name = request.form['inputName']
    _email = request.form['inputEmail']
    _password = request.form['inputPassword']
    # validate the received values/error handling
    error = ""
    fail = False
    if _name and _email and _password:
        pass
    else:
        error= error +  " " + 'Fields empty!'
        msg="Try again"
        page="/signup"
        fail = True
    if len(_name) > 45:
        error= error +  " " + 'Name too long! Max 45 characters'
        msg="Try again"
        page="/signup"
        fail = True
    elif len(_email) > 45:
        error= error +  " " + 'Email address too long! Max 45 characters'
        msg="Try again"
        page="/signup"
        fail = True
    if "@" not in _email:
        error= error + " " + 'Invalid email format!'
        msg="Try again"
        page="/signup"
        fail = True
    # error page
    if fail == True:
        return render_template('error.html', error=error, msg=msg, page=page)
    # MySQL configurations 
    conn = mysql.connect()
    cursor = conn.cursor()
    _hashed_password = generate_password_hash(_password)
    cursor.callproc('sp_makeUser',(_name,_email,_hashed_password))
    data = cursor.fetchall()
    # successful user creation 
    if len(data) == 0:
        conn.commit()
        return render_template('success.html', success='User created successfully!', page="/signin", msg='Sign in')
    # unsuccessful user creation (username exists)
    else:
        return render_template('error.html', error=str(data[0][0]), page="/signup", msg="Try again")
# signup page
@app.route('/signup')
def signup():
    return render_template('signup.html')    

# sign in page
@app.route('/signin')
def showSignin():
    return render_template('signin.html')

# checking inputed sign in values
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

# success page after sign in 
@app.route('/userhome')
def userHome():
    if session.get('user'):
        return render_template('userhome.html')
    else: 
        return render_template('error.html',error = 'Unauthorized Access', page="/", msg="Go home")

# log out function
@app.route('/logout')
def logout():
    session.pop('user',None)
    return redirect('/')

# index page
@app.route("/")
def main():
    return render_template('index.html')
if __name__ == "__main__":
        app.run()

 	
