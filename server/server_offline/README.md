NKTgLaw Internal Backend

Description
This is an internal REST API written in C++ for calculating the NKTg law. The API runs at http://localhost:8080 and does not require internet access, Docker, or an online server.

Build Instructions

mkdir build && cd build
cmake ..
make

# NKTg Offline Backend

This folder contains the offline backend for NKTgLaw, built as a single executable `nktg.exe`.

## How to Build

Double-click `build.bat` to compile the backend. It will generate `nktg.exe` inside the `build/` folder.

## How to Run

After building, double-click `run_server.bat` to start the backend server.

It will listen on `http://localhost:8080` and accept POST requests at `/predict`.

## Requirements

- Windows with CMake and a C++ compiler (e.g. Visual Studio or MinGW)
- No internet connection required
- No Docker, no Python, no external server

## API Endpoint

