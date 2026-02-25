from flask import Flask, render_template, request
app = Flask(__name__)
@app.route('/api/signup',methods=['POST'])
def post_signup():
    # read ui values from form
    _name = request.form['inputName']
    _email = request.form['inputEmail']
    _password = request.form['inputPassword']
    # validate the received values
    if _name and _email and _password:
        return json.dumps({'html':'<span>All fields good !!</span>'})
    else:
        return json.dumps({'html':'<span>Enter the required fields</span>'})

@app.route('/signup')
def signup():
    return render_template('signup.html')
@app.route("/")
def main():
    return render_template('index.html')
if __name__ == "__main__":
        app.run()
 	
