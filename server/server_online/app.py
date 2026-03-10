from flask import Flask, request, jsonify

app = Flask(__name__)

# Route bắt buộc để GitHub Actions kiểm tra server đã sống hay chưa
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "healthy"}), 200

# Endpoint chính khớp với OpenAPI và bộ Test
@app.route('/nktg', methods=['POST'])
def nktg_all():
    data = request.get_json()
    if not data:
        return jsonify({"error": "Invalid JSON"}), 400
        
    x = data.get('x', 0)
    v = data.get('v', 0)
    m = data.get('m', 0)
    dm_dt = data.get('dm_dt', 0)
    
    p = m * v
    nktg1 = x * p
    nktg2 = dm_dt * p
    
    return jsonify({
        "p": p,
        "NKTg1": nktg1,
        "NKTg2": nktg2
    })

# Endpoint phụ cho các bài test nhỏ
@app.route('/api/momentum', methods=['POST'])
def momentum():
    data = request.get_json()
    mass = data.get('mass', 0)
    velocity = data.get('velocity', 0)
    return jsonify({"momentum": mass * velocity})

if __name__ == '__main__':
    # Chạy đúng cổng 8080
    app.run(host='0.0.0.0', port=8080)
