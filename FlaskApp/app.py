from flask import Flask, render_template, json, request, session, redirect
from flaskext.mysql import MySQL
from werkzeug.security import generate_password_hash, check_password_hash

app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'BucketList'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

app.secret_key = 'why would I tell you my secret key?'

mysql = MySQL(app)
@app.route('/api/signup',methods=['POST'])
def post_signup():
    # read ui values from form
    _name = request.form['inputName']
    _email = request.form['inputEmail']
    _password = request.form['inputPassword']
    # validate the received values
    if _name and _email and _password:
        #return json.dumps({'html':'<span>All fields good !!</span>'})
        print("all fields good")
    else:
        return json.dumps({'html':'<span>Enter the required fields</span>'})
        # MySQL configurations 
    #mysql.init_app(app)
    conn = mysql.connect()
    cursor = conn.cursor()
    _hashed_password = generate_password_hash(_password)
    print(len(_hashed_password),_hashed_password)
    cursor.callproc('sp_makeUser',(_name,_email,_hashed_password))
    data = cursor.fetchall()
    if len(data) == 0:
        conn.commit()
        return json.dumps({'message':'User created successfully !'})
    else:
        return json.dumps({'error':str(data[0])})

@app.route('/signup')
def signup():
    return render_template('signup.html')    

@app.route('/signin')
def showSignin():
    return render_template('signin.html')

@app.route('/api/validateLogin',methods=['POST'])

@app.route('/api/validateLogin', methods=['POST'])
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
                return redirect('/userHome')
            else:
                return render_template('error.html', error='Wrong Email address or Password')
    except Exception as e:
        return render_template('error.html', error=str(e))

@app.route('/userhome')
def userHome():
    if session.get('user'):
        return render_template('userhome.html')
    else: 
        return render_template('error.html',error = 'Unauthorized Access')

@app.route('/logout')
def logout():
    session.pop('user',None)
    return redirect('/')

@app.route("/")
def main():
    return render_template('index.html')
if __name__ == "__main__":
        app.run(debug=True)

 	
