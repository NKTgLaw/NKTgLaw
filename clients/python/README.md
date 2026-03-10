# NKTg Law – Python SDK

This is the official Python wrapper for the NKTg Law Library. It allows developers to compute physical quantities such as momentum, NKTg₁, and NKTg₂ using the **NKTg Law of Varying Inertia**, either locally or via the REST API.

---

## 📦 Installation

You can install directly from GitHub:

```bash
pip install git+[https://github.com/NKTgLaw/NKTgLaw.git#subdirectory=clients/python](https://github.com/NKTgLaw/NKTgLaw.git#subdirectory=clients/python)
🚀 UsagePythonfrom nktg_law import NKTgClient

# Initialize with: x=2.0, v=3.0, m=5.0, dm_dt=0.1
client = NKTgClient(x=2.0, v=3.0, m=5.0, dm_dt=0.1)

print("Momentum:", client.momentum())   # → 15.0
print("NKTg₁:", client.nktg1())         # → 30.0 (x * p)
print("NKTg₂:", client.nktg2())         # → 1.5  (dm_dt * p)
📐 ParametersParameterDescriptionxPosition of the objectvVelocity of the objectmMass of the objectdm_dtRate of change of mass over time🧪 TestingThis SDK uses pytest for unit testing. To run tests:Bashpip install pytest
pytest tests/
📚 DocumentationOverview of NKTg Law: Physics of varying inertia systems.API Reference: Documentation for local classes and REST integration.Licensing Terms: Dual-license details.📄 LicenseThis project is licensed under a dual-licensing model:GPL-3.0 License (Open Source)Commercial License (Proprietary)Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for commercial usage rights.
