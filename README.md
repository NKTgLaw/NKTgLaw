Core library & API for the NKTg Law (Nguyen Khanh Tung). Includes core implementation, REST/gRPC API, and 150+ client wrappers

---

## 📖 Introduction

The **NKTg Law on Varying Inertia** describes the motion tendency of an object depending on its position (**x**), velocity (**v**), and mass (**m**):

p = m * v

NKTg₁ = x * p

NKTg₂ = (dm/dt) * p

Where:
- `x`: displacement relative to a reference point  
- `v`: velocity  
- `m`: mass  
- `dm/dt`: rate of mass variation over time  
- `p = m * v`: linear momentum  

---

## 📂 Core Components

- **Core library**: implementation in C++ / Rust / Go  
- **API layer**: REST and gRPC interfaces  
- **Client wrappers**: available for many languages under `clients/`  
- **Standalone implementations**: 150 language versions under `examples/`

---

## 🌍 Examples

This repository contains **150 implementations** of the NKTg Law, one for each programming language.  

- All code snippets are stored in the [`examples/`](./examples) directory.  
- Each file is self-contained and demonstrates the calculation of:
  
p = m * v

NKTg₁ = x * p

NKTg₂ = (dm/dt) * p

- Default parameters: `x=2, v=3, m=5, dm_dt=0.1`

👉 Browse the full list here: [examples/](./examples)

**Examples include (but are not limited to):**

- High-level: Python, Java, JavaScript, C#, Swift, Kotlin, Go, Rust  
- Scientific: MATLAB, R, Julia, Fortran  
- Functional: Haskell, Scala, Lisp, Scheme, F#  
- Systems: C, C++, Assembly, Ada  
- Web & scripting: PHP, TypeScript, Ruby, Lua, Perl, Bash  
- Database & query: SQL, PL/SQL  
- Specialized: Solidity, VHDL, Verilog, Q#, Scratch, Prolog, COBOL  

---

## ⚡ Quick Start

- You can also explore the [`examples/`](https://github.com/NKTgLaw/NKTgLaw/tree/main/examples) directory for 150 standalone implementations.
- Use the provided [client wrappers](https://github.com/NKTgLaw/NKTgLaw/tree/main/clients) to quickly test the NKTg Law.

###  Python Client

```bash
cd clients/python
python NKTgLaw.py
```

Expected output:
```text
p=15.0, NKTg1=30.0, NKTg2=1.5
```

###  C++ Client

```bash
cd clients/cpp
g++ NKTgLaw.cpp -o nktg_client
./nktg_client
```

Expected output:
```text
p=15 NKTg1=30 NKTg2=1.5
```

---

## 📜 License

NKTgLaw is available under a **dual licensing model**:


### 1. GPL-3.0 License (Open Source)

- You can use, modify, and redistribute NKTgLaw under the terms of the [GPL-3.0 License](LICENSE).  
- This version is free and requires that any derivative works are also released under GPL-3.0.


### 2. Commercial License (Proprietary)

- For commercial use without the GPL obligations, a commercial license is required.  
- See [LICENSE-commercial.txt](LICENSE-commercial.txt) for terms and conditions.  
- Contact **Nguyễn Khánh Tùng** (traiphieu.com@gmail.com) for licensing and support.

---

**Note:** Each user must choose either the **GPL license** **or** the **Commercial license**.  
Combining both is not permitted for the same use case.

![Release v0.1.0](https://img.shields.io/github/v/release/NKTgLaw/nktg-law-library?label=Release)

