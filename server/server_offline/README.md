# NKTgLaw Internal Backend

## Description

```
This is an internal REST API written in C++ for calculating the NKTg law.  
The API runs at `http://localhost:8080` and does not require internet access, Docker, or an online server.

```
## Build Instructions

```
mkdir build && cd build
cmake ..
make

```

## How to Run
After building, double-click run_server.bat (Windows) or run ./build/nktg.exe manually. The server will start and listen on http://localhost:8080.

## API Endpoint

```
POST /predict
Content-Type: application/json

{
  "text": "Your input here"
}

```

## Response

```
json
{
  "result": "Predicted output"
}

```

## Requirements

Windows with CMake and a C++ compiler (e.g. Visual Studio or MinGW)

No internet connection required

No Docker, no Python, no external server
