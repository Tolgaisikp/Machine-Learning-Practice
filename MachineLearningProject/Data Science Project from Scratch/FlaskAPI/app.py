from flask import Flask, jsonify, request 
from input_data import data_in
import numpy as np
import pickle
import flask
import json

def load_models():
    file_name = "models/model_file.p"
    with open(file_name, 'rb') as pickled:
        data = pickle.load(pickled)
        model = data['model']
    return model

app = Flask(__name__)

@app.route('/predict', methods = ['GET'])
def predict():
    #x = np.array(data_in).reshape(1,-1)
    
    request_json = request.get_json()
    x = request_json['input']

    x_in = np.array(x).reshape(1,-1)

    model = load_models()

    prediction = model.predict(x_in)[0]

    response = json.dumps({'response':prediction})

    return response, 200

if __name__ == '__main__':
    application.run(debug = True)



    #python wsgi.py 
    #python request.py 