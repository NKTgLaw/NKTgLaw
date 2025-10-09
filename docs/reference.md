# 📑 NKTgLaw Reference Guide

This document provides a technical reference for the core formulas, units, and definitions used in the NKTgLaw system.

---

## ⚛️ Core Definitions

- **Position (x)**: Displacement of the object relative to a reference point.
- **Velocity (v)**: Rate of change of position over time.
- **Mass (m)**: Quantity of matter in the object.
- **Momentum (p)**: Defined as `p = m × v`
- **Mass rate (dm/dt)**: Rate of change of mass over time.

---

## 🔢 Key Equations

- **NKTg = f(x, v, m)**
- **NKTg₁ = x × p**
- **NKTg₂ = (dm/dt) × p**

---

## 📏 Units

- **Momentum (p)**: kg·m/s
- **Position (x)**: meters (m)
- **Mass rate (dm/dt)**: kg/s
- **NKTg₁**: kg·m²/s
- **NKTg₂**: kg²·m/s²
- **NKTm**: Custom unit representing varying inertia

---

## 📈 Interpretation Rules

- If **NKTg₁ > 0** → object tends to destabilize
- If **NKTg₁ < 0** → object tends to stabilize
- If **NKTg₂ > 0** → mass variation supports motion
- If **NKTg₂ < 0** → mass variation resists motion

---

## 📚 Related Files

- [`overview.md`](./overview.md): Conceptual introduction
- [`architecture.md`](./architecture.md): System design
- [`usage-guide.md`](./usage-guide.md): How to use the library
- [`roadmap.md`](./roadmap.md): Future plans
- [`diagrams`](./diagrams): Visual representations

---

Let me know if you'd like this reference expanded with examples, derivations, or symbolic representations.
