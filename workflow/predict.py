import pandas, sklearn.linear_model
from flask import request
from flask import Flask
app = Flask(__name__)
@app.route('/predict')
def predict():
	sqmtr=request.args.get('sqfeet', default = 100, type = int)
	data = pandas.read_csv('./data/houseprices.csv')
	model = sklearn.linear_model.LinearRegression()
	model.fit(data.as_matrix(['FloorSpace']), data.as_matrix(['Price']))
	return 'Price of a %d sq feet house %f thousand dollars' % (sqmtr, model.predict([[sqmtr]])[0][0])
if __name__ == '__main__':
	app.run(debug=True,host='0.0.0.0',port=8888)
