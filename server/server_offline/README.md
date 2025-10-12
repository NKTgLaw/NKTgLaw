# NKTgLaw — Offline Internal Backend

## 🧾 Description

This is the offline backend for NKTgLaw — a lightweight REST API written in C++ for computing the NKTg law.  
It runs locally at `http://localhost:8080` and does **not** require internet access, Docker, Python, or any external server.

---

## ⚙️ Build Instructions (Developer Mode)

If you want to build the server from source:

```
mkdir build
cd build
cmake ..
make

```

This will generate nktg.exe inside the build/ directory.

## ▶️ How to Run

Use the provided run_server.bat script to launch the server. It will automatically detect the correct location of nktg.exe:

```
@echo off
echo === Starting NKTg Backend ===

REM Prefer running the prebuilt executable from the root directory
IF EXIST ..\..\nktg.exe (
    echo ✅ Running nktg.exe from root directory
    ..\..\nktg.exe
) ELSE IF EXIST .\build\nktg.exe (
    echo ✅ Running nktg.exe from build directory
    .\build\nktg.exe
) ELSE (
    echo ❌ Error: nktg.exe not found in either root or build directory
)

pause

```
Once started, the server will listen at: http://localhost:8080

##🔌 API Endpoint

POST /predict
Content-Type: application/json

Request Body:

```
{
  "text": "Your input here"
}

```

## Response:

```
{
  "result": "Predicted output"
}

```

## 🧪 Default Example Parameters

The default examples use:

x = 2

v = 3

m = 5

dm/dt = 0.1

Computed values:

p = m × v

NKTg₁ = x × p

NKTg₂ = (dm/dt) × p

## 📦 Requirements

Windows OS

CMake

C++ compiler (e.g. Visual Studio, MinGW)

No internet connection required

No Docker, no Python, no external dependencies

## 📁 Related Directories

Folder	Purpose
server/server_offline/	C++ source code and build scripts
clients/	Examples in 150 programming languages
examples/	Standalone examples without server
run_server.bat	Smart launcher script for offline mode

## 📮 Contact & License

Author: Nguyễn Khánh Tùng

Email: traiphieu.com@gmail.com

License: GPL-3.0 or commercial (see LICENSE and LICENSE-commercial.txt)
