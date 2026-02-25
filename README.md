Core library & API for the NKTg Law (Nguyen Khanh Tung). Includes core implementation, REST/gRPC API, and 150+ client wrappers

---

## 📖 Introduction

**The NKTg Law on Varying Inertia** describes the movement tendency of an object in space depends on the relationship between its position, velocity, and mass.

```
    NKTg = f(x, v, m)

```

- In which:

  - x is the position or displacement of the object relative to the reference point.

  - v is the velocity.

  - m is the mass.

- The movement tendency of the object is determined by the following basic product quantities:

```

    NKTg₁ = x × p

    NKTg₂ = (dm/dt) × p

```

- In which:

  - p is the linear momentum, calculated by p = m × v.

  - dm/dt is the rate of mass change over time.

  - NKTg₁ is the quantity representing the product of position and momentum.

  - NKTg₂ is the quantity representing the product of mass variation and momentum.

- The unit of measurement is NKTm, representing a unit of varying inertia.

- The sign and value of the two quantities NKTg₁ and NKTg₂ determine the movement tendency:

  - If NKTg₁ is positive, the object tends to move away from the stable state.

  - If NKTg₁ is negative, the object tends to move toward the stable state.

  - If NKTg₂ is positive, the mass variation has a supporting effect on the movement.

  - If NKTg₂ is negative, the mass variation has a resisting effect on the movement.

- The stable state in this law is understood as the state in which the position (x), velocity (v), and mass (m) of the object interact with each other to maintain the movement structure, helping the object avoid losing control and preserving its inherent movement pattern.

- **Reference DOI:** These DOIs represent the theoretical foundation and empirical datasets of the NKTg Law on Varying Inertia.
  - [Zenodo: 10.5281/zenodo.15808498](https://doi.org/10.5281/zenodo.15808498)
- **Permanent DOI Archive:**  All research on the NKTg Law on Varying Inertia is permanently registered and archived via DOI records in DataCite and Crossref, ensuring global traceability, academic verifiability, and long-term preservation.
  - [ORCID: https://orcid.org/0009-0002-9877-4137](https://orcid.org/0009-0002-9877-4137)
- **Digital Provenance / NFT Record:** This NFT serves as a digital provenance record associated with the NKTg work.
  - [Rarible: (ERC-1155)](https://og.rarible.com/token/0xb66a603f4cfe17e3d27b87a8bfcad319856518b8:38194613413526326280435937529183067329104603762300740319657894664129950515201?tab=owners)

---

## 📂 Core Components

- **Core library**: implementation in C++ / Rust / Go  
- **API layer**: REST and gRPC interfaces  
- **Client wrappers**: available for many languages under `clients/`  
- **Standalone implementations**: 150 language versions under `examples/`

---

### 🌌 NKTgUniversa API  

- **The NKTgUniversa API** is formally established as the **Universal Dynamics Ecosystem** — covering multiple fields, cross-platform, and cross-disciplinary, aimed at modeling variable inertia, dynamic mass interactions, and systemic motion across various domains, applied in the following areas:

  - Planetary dynamics

  - Orbit navigation motion

  - Robotics & control systems

  - State-reflective AI

  - Physics simulation

This framework can reflect any system with state, velocity, and mass variation — so it is not only mathematically correct but also practically applicable in real-world engineering.

👉 This recognition is based on:  

- **Completed Core & API Layers:** Implemented in C++, Rust, Go, with REST/gRPC interfaces.  
- **Cross-language adoption:** Over **150 client implementations** across major programming languages.  
- **The NKTg Law** preserves its invariant mathematical structure across more than **150 programming languages**, applied throughout all domains of science and life. It requires no differentiation or approximation methods, ensuring that its computational results remain precise, reproducible, and consistent across all environments and implementations.
- **Reference DOI:** These DOIs provide long-term preservation and citation access for all **150 language source** packages and verified implementations of the NKTgLaw Core & API.
  - Zenodo — [10.5281/zenodo.17190536](https://doi.org/10.5281/zenodo.17190536)  
- **Digital Provenance / NFT Record:** This NFT provides long-term on-chain preservation and provenance for all 150 language source packages and verified implementations of the NKTgLaw Core & API.
  - Rarible — [ERC-1155](https://og.rarible.com/token/0xb66a603f4cfe17e3d27b87a8bfcad319856518b8:38194613413526326280435937529183067329104603762300740319657894664129950515203)

- **Experimental verification:** Consistent results with **planetary and NASA datasets**  Detailed datasets and DOI references for these verifications are provided in the **Foundations** section.
- **Multi-Platform Deployment** To ensure long-term accessibility, validation, and global interoperability, the API and its repositories are deployed and maintained across 9 major Git platforms:

  - [GitHub](https://github.com/NKTgLaw/NKTgLaw)  
  - [GitLab](https://gitlab.com/NKTgLaw/NKTgLaw)  
  - [Gitea](https://gitea.com/NKTgLaw/NKTgLaw)  
  - [Codeberg](https://codeberg.org/NKTgLaw/NKTgLaw)  
  - [Launchpad](https://git.launchpad.net/nktglaw)  
  - [SourceForge](https://sourceforge.net/projects/nktglaw/)  
  - [Bitbucket](https://bitbucket.org/nktglaw/nktglaw/src/main/)  
  - [SourceHut](https://git.sr.ht/~nktglaw/NKTgLaw)
  - [Forgejo](https://code.forgejo.org/NKTgLaw/NKTgLaw)

- **Reference DOI:** NKTg Law of Varying Inertia: Content Standardized Across the 21 Most Widely Spoken Human Tongues
  - [Zenodo: 10.5281/zenodo.18722425](https://doi.org/10.5281/zenodo.18722425)  

- **Dual-license model:** GPL-3.0 (open source) / Commercial license (enterprise-grade).

- The verification of NKTg Law adheres to open-source reproducibility standards, featuring transparent, multilingual, and cross-platform implementations—accessible anytime, anywhere. It is**empirically validated using NASA’s public datasets**, producing fully consistent results. Implemented in **150 programming languages**, across **8 Git platforms**, **Offline Mode and Online Mode**.

- This distributed presence establishes **NKTgUniversa API** as an **independent, verifiable, and community-accessible Universal Dynamics Ecosystem**, aligned with the principles of **open science, cross-domain collaboration, and global reproducibility**

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
 
- **Reference DOI:** Experimental verifications: Summary of Neptune Data Simulated by the NKTg Law Compared to NASA's Published Data (2024)
  - Zenodo — [10.5281/zenodo.15864091](https://doi.org/10.5281/zenodo.15864091)
- **Reference DOI:** Experimental verifications:Experimental Verification of the NKTg Law Using NASA Mercury Data in 2025
  - Zenodo — [10.5281/zenodo.18734660](https://doi.org/10.5281/zenodo.18734660 )
- **Reference DOI:** Experimental Verification of the NKT Law: Interpolating the Masses of 8 Planets Using NASA Data as of 30–31/12/2024
  - Zenodo — [10.5281/zenodo.16023879](https://doi.org/10.5281/zenodo.16023879) 
- **Reference DOI:** NKTm Unit: Measurement Standard for Varying Inertia in the NKTg Law  
  - Zenodo — [10.5281/zenodo.17162127](https://doi.org/10.5281/zenodo.18471049)  

- **Reference DOI:** Compatibility of Classical Physics, Relativity, and Quantum Mechanics with the NKTg Law
  - Zenodo — [10.5281/zenodo.18406191](https://doi.org/10.5281/zenodo.18406191)  

- **Digital Provenance / NFT Record:** This NFT provides immutable on-chain preservation and provenance for the NKTm Unit
  - Rarible — [ERC-1155](https://og.rarible.com/token/0xb66a603f4cfe17e3d27b87a8bfcad319856518b8:38194613413526326280435937529183067329104603762300740319657894664129950515202)  

- In **NKTg Law**, `NKTg₁` and `NKTg₂` are not independent quantities but two interrelated expressions of a single concept — the generalized variable inertia `NKTg`.

    - `NKTg₁` represents the interaction between position and momentum.  
    - `NKTg₂` represents the interaction between mass variation and momentum.  
    - Both share the same measurement unit `NKTm` and together describe the complete state of variable inertia within a system.  
    - The law emphasizes that `NKTg₁` and `NKTg₂` are not independent entities, but two aspects of the same physical phenomenon: **variable inertia**.  
    - They express different manifestations of the same underlying essence — the change in the motion tendency of an object system when the factors **x**, **v**, and **m** vary.


- **Wiki.md**: consolidated wiki documentation  
- **Index.md**: structured entry point for foundational texts
  
👉 Browse the full collection here: [foundations/](foundations/)

---

## 🌍 Examples

F# example using the default parameters (x=2, v=3, m=5, dm_dt=-0.5).

```fsharp
type nktg={p:float;nktg1:float;nktg2:float;tendency1:string;tendency2:string}
let tendency1=function n when n>0.0->"Moving away from stable state"|n when n<0.0->"Moving toward stable state" |->"Stable equilibrium"
let tendency2=function n when n>0.0->"Mass variation supports movement"|n when n<0.0->"Mass variation resists movement" |->"No mass variation effect"
let nktg x v m dm_dt=let p=mv in let nktg1,nktg2=xp,dm_dt*p
                     {p=p;nktg1=nktg1;nktg2=nktg2;tendency1=tendency1 nktg1;tendency2=tendency2 nktg2}
printfn "%A" (nktg 2.0 3.0 5.0 -0.5)
```
Output

```text
{ p = 15.0
  nktg1 = 30.0
  nktg2 = -7.5
  tendency1 = "Moving away from stable state"
  tendency2 = "Mass variation resists movement" }
```

This repository contains **150 implementations** of the NKTg Law, one for each programming language.  

- All code snippets are stored in the [`examples/`](./examples) directory.  
- Each file is self-contained and demonstrates the calculation of:

```

p = m * v

NKTg₁ = x * p

NKTg₂ = (dm/dt) * p

```

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

- NKTgLaw supports both **offline** and **online** modes.  
  - For **maximum performance and full precision**, we recommend using the **offline backend**, located at [`server/server_offline`](https://github.com/NKTgLaw/NKTgLaw/tree/main/server/server_offline).  
  - For quick integration or remote access, you can use the **online client wrappers** under [`clients/`](https://github.com/NKTgLaw/NKTgLaw/tree/main/clients).

👉 You can also explore the [`examples/`](https://github.com/NKTgLaw/NKTgLaw/tree/main/examples) directory for 150 standalone implementations.

- ### Assembly

```
; Assembly: low-level programming
; x=2, v=3, m=5, dm_dt=0.1
; Calculate p=m*v, NKTg1=x*p, NKTg2=dm_dt*p conceptually

```

- ### Q#

```

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
  
👉 Use the provided [client wrappers](https://github.com/NKTgLaw/NKTgLaw/tree/main/clients) to quickly test the NKTg Law.

- ### Python Client

```
cd clients/python
python NKTgLaw.py

```

Expected output:

```

p=15.0, NKTg1=30.0, NKTg2=1.5

```

- ### C++ Client

```

cd clients/cpp
g++ NKTgLaw.cpp -o nktg_client
./nktg_client

```

Expected output:

```

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
- Contact **Nguyen Khanh Tung** (traiphieu.com@gmail.com) for licensing and support.

**Note:** Each user must choose either the **GPL license** **or** the **Commercial license**.  
Combining both is not permitted for the same use case.

---

🌍 Release v0.2.0

