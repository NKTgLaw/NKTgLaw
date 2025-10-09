# 📡 NKTgLaw API

This folder contains the API layer for the NKTgLaw system, which exposes core physics computations via REST and gRPC interfaces.

---

## 🚀 Purpose

The API allows external clients to compute NKTg quantities — including momentum, NKTg₁, and NKTg₂ — based on input parameters such as position, velocity, mass, and mass rate.

---

## 📁 Structure

```
api/
├── docker/        # Dockerfile and docker-compose for deployment
├── openapi.yaml   # OpenAPI specification for REST endpoints
├── server.cpp     # C++ implementation of the API logic
├── server.hpp     # Header file for API functions
├── README.md      # This documentation file

```
---

## 🔢 Endpoints (Defined in `openapi.yaml`)

### `POST /compute`
- **Request Body**:
  ```json
  {
    "x": 2.0,
    "v": 3.0,
    "m": 5.0,
    "dm_dt": 0.1
  }
Response:

json
{
  "p": 15.0,
  "NKTg1": 30.0,
  "NKTg2": 1.5,
  "tendency": "positive"
}

🐳 Running with Docker

docker compose up --build
API will be available at http://localhost:8000

Swagger UI (optional) at http://localhost:8080

🧪 Testing Locally
You can test the API using curl or any HTTP client:


curl -X POST http://localhost:8000/compute \
  -H "Content-Type: application/json" \
  -d '{"x":2.0,"v":3.0,"m":5.0,"dm_dt":0.1}'
  
📌 Notes
The API is designed to be language-agnostic and can be accessed from Python, C++, Rust, Go, and more.

For full documentation of the NKTg Law, see docs/overview.md

To contribute, please follow the coding standards defined in tools/lint.sh
