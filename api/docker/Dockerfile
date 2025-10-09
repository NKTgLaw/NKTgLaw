# 📦 NKTgLaw API Dockerfile

# Use a lightweight Python base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy API source files
COPY server.cpp server.hpp /app/
COPY api/openapi.yaml /app/

# Optional: install Python dependencies if using a Python API layer
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Install build tools and compile C++ server
RUN apt-get update && apt-get install -y g++ cmake && \
    g++ server.cpp -o nktg_server

# Expose API port
EXPOSE 8000

# Default command to run the API server (adjust if using Flask or FastAPI)
CMD ["uvicorn", "api_server:app", "--host", "0.0.0.0", "--port", "8000"]

