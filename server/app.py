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
    result = x * p  # ví dụ đơn giản
    return jsonify({"nktg1": result})

@app.route('/api/nktg2', methods=['POST'])
def nktg2():
    data = request.get_json()
    dm_dt = data.get('dm_dt', 0)
    p = data.get('momentum', 0)
    result = dm_dt * p  # ví dụ đơn giản
    return jsonify({"nktg2": result})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
