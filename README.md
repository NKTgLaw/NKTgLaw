![Release v0.1.0](https://img.shields.io/github/v/release/NKTgLaw/nktg-law-library?label=Release)

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
