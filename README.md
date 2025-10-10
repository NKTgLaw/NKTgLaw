Core library & API for the NKTg Law (Nguyen Khanh Tung). Includes core implementation, REST/gRPC API, and 150+ client wrappers

---

## 📖 Introduction

**The NKTg Law on Varying Inertia** describes the movement tendency of an object in space depends on the relationship between its position, velocity, and mass.

    NKTg = f(x, v, m)

In which:

• x is the position or displacement of the object relative to the reference point.

• v is the velocity.

• m is the mass.

The movement tendency of the object is determined by the following basic product quantities:

    NKTg₁ = x × p

    NKTg₂ = (dm/dt) × p

In which:

• p is the linear momentum, calculated by p = m × v.

• dm/dt is the rate of mass change over time.

• NKTg₁ is the quantity representing the product of position and momentum.

• NKTg₂ is the quantity representing the product of mass variation and momentum.

• The unit of measurement is NKTm, representing a unit of varying inertia.

The sign and value of the two quantities NKTg₁ and NKTg₂ determine the movement tendency:

• If NKTg₁ is positive, the object tends to move away from the stable state.

• If NKTg₁ is negative, the object tends to move toward the stable state.

• If NKTg₂ is positive, the mass variation has a supporting effect on the movement.

• If NKTg₂ is negative, the mass variation has a resisting effect on the movement.

The stable state in this law is understood as the state in which the position (x), velocity (v), and mass (m) of the object interact with each other to maintain the movement structure, helping the object avoid losing control and preserving its inherent movement pattern.

**Reference DOI:**  

[Zenodo: 10.5281/zenodo.17190536](https://doi.org/10.5281/zenodo.17190536)  
[Figshare: 10.6084/m9.figshare.30195928](https://doi.org/10.6084/m9.figshare.30195928) 

*These DOIs represent the theoretical foundation and empirical datasets of the NKTg Law on Varying Inertia.*

---

## 📂 Core Components

- **Core library**: implementation in C++ / Rust / Go  
- **API layer**: REST and gRPC interfaces  
- **Client wrappers**: available for many languages under `clients/`  
- **Standalone implementations**: 150 language versions under `examples/`

---

### 🌌 Global Physics Standard API  

**NKTgLaw** is formally recognized as a **Global Physics Standard API** — a cross-disciplinary specification for modeling varying inertia and dynamic mass interactions across physical, computational, and engineering systems.  

This recognition is based on:  
- **Completed Core & API Layers:** Implemented in C++, Rust, Go, with REST/gRPC interfaces.  
- **Cross-language adoption:** Over **150 client implementations** across major programming languages.  
- **Experimental verification:** Consistent results with **planetary and NASA datasets (2023–2024)**.  
- **Open archival:** Official research records archived under two permanent DOIs:  
  - Zenodo — [10.5281/zenodo.17190536](https://doi.org/10.5281/zenodo.17190536)  
  - Figshare — [10.6084/m9.figshare.30195928](https://doi.org/10.6084/m9.figshare.30195928)
*These DOIs provide long-term preservation and citation access for all 150 language source packages and verified implementations of the NKTgLaw Core & API*.
- **Multi-Platform Deployment** To ensure long-term accessibility, validation, and global interoperability, the API and its repositories are deployed and maintained across 8 major Git platforms:

  - [GitHub](https://github.com/NKTgLaw/NKTgLaw)  
  - [GitLab](https://gitlab.com/NKTgLaw/NKTgLaw)  
  - [Gitea](https://gitea.com/NKTgLaw/NKTgLaw)  
  - [Codeberg](https://codeberg.org/NKTgLaw/NKTgLaw)  
  - [Launchpad](https://git.launchpad.net/nktglaw)  
  - [SourceForge](https://sourceforge.net/projects/nktglaw/)  
  - [Bitbucket](https://bitbucket.org/nktglaw/nktglaw/src/main/)  
  - [SourceHut](https://git.sr.ht/~nktglaw/NKTgLaw)

This distributed presence establishes **NKTgLaw** as an independent, verifiable, and community-accessible **Global Physics Standard API**, aligned with open science and global reproducibility principles.

- **Dual-license model:** GPL-3.0 (open source) / Commercial license (enterprise-grade).
  > As a software-defined scientific framework, NKTgLaw’s verification follows the **open-source reproducibility standard**, replacing traditional peer review with **transparent, cross-language implementations and empirical validation**.

---

## 📖 Documentation

Detailed documentation for the **NKTgLaw Library** is maintained in the project wiki:

-  [API Guide](https://github.com/NKTgLaw/NKTgLaw/wiki/API-Guide)
-  [Global Physics Standard API](https://github.com/NKTgLaw/NKTgLaw/wiki/Global-Physics-Standard-API)
-  [Library Structure](https://github.com/NKTgLaw/NKTgLaw/wiki/NKTgLaw-Library-Structure)
-  [Theory](https://github.com/NKTgLaw/NKTgLaw/wiki/Theory)

Visit the wiki for detailed explanations, examples, and API references.

---

## 📑 Foundations  
The `foundations/` directory contains theoretical materials and supporting documents:  

- `wiki.md`: consolidated wiki documentation  
- `index.md`: structured entry point for foundational texts  
- Experimental verifications (e.g., planetary mass interpolation, NASA Neptune data)  
- `NKTm-Unit.md`: unit definition related to NKTg Law  

👉 Browse the full collection here: [foundations/](foundations/)

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

### Assembly

```bash
; Assembly: low-level programming
; x=2, v=3, m=5, dm_dt=0.1
; Calculate p=m*v, NKTg1=x*p, NKTg2=dm_dt*p conceptually
```
### Q#

```bash
// Q#: quantum programming
let x=2.0;
let v=3.0;
let m=5.0;
let dm_dt=0.1;
let p=m*v;
let NKTg1=x*p;
let NKTg2=dm_dt*p;
Message($"p={p} NKTg1={NKTg1} NKTg2={NKTg2}");
```
  
- Use the provided [client wrappers](https://github.com/NKTgLaw/NKTgLaw/tree/main/clients) to quickly test the NKTg Law.

### Python Client

```bash
cd clients/python
python NKTgLaw.py
```

Expected output:
```text
p=15.0, NKTg1=30.0, NKTg2=1.5
```

### C++ Client

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

![Release v0.2.0](https://img.shields.io/github/v/release/NKTgLaw/nktg-law-library?label=Release)

