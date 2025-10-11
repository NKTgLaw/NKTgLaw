NKTgLaw Internal Backend

After installation, you can run the backend by clicking:
Start Menu → NKTgLaw → Run NKTg Backend

The server will start at http://localhost:8080
You can send POST requests to /predict with JSON input.

Example:
POST /predict
Content-Type: application/json

{
  "text": "Your input here"
}

Response:
{
  "result": "Predicted output"
}
