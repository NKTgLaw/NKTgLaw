from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api/momentum', methods=['POST'])
def momentum():
    data = request.get_json()
    mass = data.get('mass', 0)
    velocity = data.get('velocity', 0)
    return jsonify({"momentum": mass * velocity})

@app.route('/api/nktg1', methods=['POST'])
def nktg1():
    data = request.get_json()
    x = data.get('x', 0)
    p = data.get('momentum', 0)
    return jsonify({"nktg1": x * p})

@app.route('/api/nktg2', methods=['POST'])
def nktg2():
    data = request.get_json()
    dm_dt = data.get('dm_dt', 0)
    p = data.get('momentum', 0)
    return jsonify({"nktg2": dm_dt * p})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
