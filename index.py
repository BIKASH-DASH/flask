from flask import Flask,render_template,request,json
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'flasktest'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

from saveinformation import saveinformationModels



@app.route('/')
def index():
	#conn = mysql.connect()
	#cursor = conn.cursor()
	#cursor.execute("SELECT * from User")
	#data = cursor.fetchone()
	return render_template('registeter.html')
	#return json.dumps({'status':data});



@app.route('/saveinformation',methods = ['POST', 'GET', 'AJAX'])
def saveinformation():

	#return render_template('saveinformation.html')
	firstname = request.form['firstname']
	address = request.form['address']
	cpassword = request.form['cpassword']
	emailid = request.form['emailid']
	gender = request.form['gender']
	lastname = request.form['lastname']
	password = request.form['password']
	phoneno = request.form['phoneno']
	Technologies = request.form['Technologies']
	UserDesignation = request.form['UserDesignation']
	conn = mysql.connect()
	cursor = conn.cursor()
	cursor.execute("INSERT INTO user (firstname, address, cpassword, emailid, gender, lastname, password, phoneno, Technologies, UserDesignation) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", (firstname, address, cpassword, emailid, gender, lastname, password, phoneno,Technologies,UserDesignation))
	conn.commit()

	#print ("saved successfully created successfully");
	conn.close()
	return json.dumps({'status':'OK','user':firstname,'pass':address});

	
@app.route('/list')
def list():
	conn = mysql.connect()
	cursor = conn.cursor()
	cursor.execute("SELECT * from User")
	data = cursor.fetchall()
	return render_template('list.html',lists=data)
	
	
@app.route('/listdata')
def listdata():
	conn = mysql.connect()
	cursor = conn.cursor()
	cursor.execute("SELECT * from User")
	data = cursor.fetchall()
	#return json.dumps({'status':'OK','data':data});
	return render_template('list.html',lists=data)
	
@app.errorhandler(404)
def page_not_found(e):
    #snip
    return render_template('404.html'), 404

if __name__ == '__main__':
   app.run(debug=True)
   app.config['SQLALCHEMY_ECHO'] = True
   app.config['debug'] = True

