# NKTg Law SDK – Assembly Implementation (x86-64)

This SDK implements the **NKTg Law** core logic in x86-64 Assembly using **NASM** syntax. It provides high-performance, low-level functions for calculating variable inertia components.

## 🔬 Mathematical Logic
Unlike previous versions, this implementation strictly follows the **Product Quantity** logic (multiplication-based) to ensure physical accuracy:
- **NKTg1**: $x \times (m \times v)$
- **NKTg2**: $\frac{dm}{dt} \times (m \times v)$

## 📁 Structure

```text
clients/asm/
├── src/                # Standardized core logic
│   └── nktg.asm        # Implementation of compute_nktg1 & compute_nktg2
├── example/            # Example usage in Assembly
│   └── run_nktg.asm
├── tests/              # Unit tests for result verification (30.0 & 1.5)
│   └── test_nktg.asm
├── Makefile            # Build, Link, and Test automation
└── README.md           # Documentation
🚀 Build & RunTo compile the assembly object and link the example:Bashmake
./run_nktg
🧪 Run TestsThe test suite verifies the core logic against the standard experimental dataset ($x=2, v=3, m=5, dm/dt=0.1$):Bashmake test
📄 LicenseNKTgLaw is available under a dual licensing model:GPL-3.0 License (Open Source)Commercial License (Proprietary)Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.
