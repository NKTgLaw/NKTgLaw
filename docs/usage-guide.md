# 🛠️ NKTgLaw Usage Guide

This guide explains how to use the NKTgLaw system to compute physical quantities based on the NKTg Law of Varying Inertia.

---

## ⚙️ Core Functions

The following functions are available in the core library (`core/nktg.hpp`):

```cpp
// Calculate momentum
double momentum(double m, double v);

// Calculate NKTg₁ = x × p
double computeNKTg1(double x, double p);

// Calculate NKTg₂ = (dm/dt) × p
double computeNKTg2(double dm_dt, double p);
🧪 Example Calculation
Default parameters:

Position x = 2

Velocity v = 3

Mass m = 5

Mass rate dm_dt = 0.1

Steps:

Compute momentum: p = m × v = 15

Compute NKTg₁: x × p = 30

Compute NKTg₂: dm_dt × p = 1.5

🚀 Running the Examples
Python
bash
cd clients/python
python NKTgLaw.py
Expected output:

Mã
p = 15.0
NKTg1 = 30.0
NKTg2 = 1.5
C++
bash
cd clients/cpp
g++ NKTgLaw.cpp -o nktg_client
./nktg_client
Expected output:

Mã
p = 15
NKTg1 = 30
NKTg2 = 1.5
🌐 Using the API
The system provides REST and gRPC endpoints for remote computation.

REST: /api/nktg

gRPC: nktg.NKTgService

Refer to api/openapi.yaml for full specifications.

📦 Supported Languages
You can find 150+ implementations in the examples/ directory, including:

Python, Java, C++, Rust, Go

MATLAB, R, Julia, Fortran

Haskell, Scala, Lisp

SQL, TypeScript, PHP, Bash

Q#, VHDL, Verilog, Scratch

Each file is self-contained and demonstrates the same logic.

📌 Tips
Use consistent units (e.g., SI) for accurate results.

For symbolic or scientific use, consider integrating with SymPy or MATLAB.

Explore the foundations/ directory for theoretical background and unit definitions.
