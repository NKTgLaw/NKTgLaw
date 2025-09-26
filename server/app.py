from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api/momentum', methods=['POST'])
def momentum():
    data = request.get_json()
    return jsonify({"momentum": data["mass"] * data["velocity"]})

@app.route('/api/nktg1', methods=['POST'])
def nktg1():
    data = request.get_json()
    return jsonify({"nktg1": data["x"] * data["momentum"]})

@app.route('/api/nktg2', methods=['POST'])
def nktg2():
    data = request.get_json()
    return jsonify({"nktg2": data["dm_dt"] * data["momentum"]})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
