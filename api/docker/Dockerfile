# --- Stage 1: Build C++ Core Logic ---
FROM gcc:13 as builder

WORKDIR /build

# Copy C++ source files for compilation
COPY server.cpp server.hpp ./

# Compile the NKTg core server with optimization
RUN g++ -O3 server.cpp -o nktg_server

# --- Stage 2: Final Production Image ---
FROM python:3.11-slim

WORKDIR /app

# Install necessary runtime libraries
RUN apt-get update && apt-get install -y libstdc++6 && rm -rf /var/lib/apt/lists/*

# Copy the compiled binary from the builder stage
COPY --from=builder /build/nktg_server /app/

# Copy API definition and requirements
COPY api/openapi.yaml /app/
COPY requirements.txt /app/

# Install Python dependencies for the API layer
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python API implementation
COPY api/ /app/api/

# Expose the API port
EXPOSE 8000

# Set the default command to run the Python API wrapper
# Assumes api_server.py exists within the api/ directory
CMD ["uvicorn", "api.api_server:app", "--host", "0.0.0.0", "--port", "8000"]
