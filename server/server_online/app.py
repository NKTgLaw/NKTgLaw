from flask import Flask, request, jsonify

app = Flask(__name__)

# --- Health Check Endpoint (REQUIRED for CI/CD to pass) ---
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "healthy"}), 200

# --- Individual Calculations ---
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

# --- Consolidated Endpoint (Matches OpenAPI Spec) ---
@app.route('/nktg', methods=['POST'])
def nktg_all():
    data = request.get_json()
    # Extracting variables with defaults
    x = data.get('x', 0)
    v = data.get('v', 0)
    m = data.get('m', 0)
    dm_dt = data.get('dm_dt', 0)
    
    # Core NKTg logic
    p = m * v
    res_nktg1 = x * p
    res_nktg2 = dm_dt * p
    
    return jsonify({
        "p": p,
        "NKTg1": res_nktg1,
        "NKTg2": res_nktg2
    })

if __name__ == '__main__':
    # Running on port 8080 to match your Docker and YAML configs
    app.run(host='0.0.0.0', port=8080)
