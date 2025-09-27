# NKTg Law – Python SDK

This is the official Python wrapper for the NKTg Law Library. It allows developers to compute physical quantities such as momentum, NKTg₁, and NKTg₂ using the NKTg Law, either locally or via the REST API.

---

## 📦 Installation

You can install directly from GitHub:

```bash
pip install git+https://github.com/NKTgLaw/nktg-law-library.git#subdirectory=clients/python
🚀 Usage
python
from nktg_law import NKTgClient

client = NKTgClient(x=2.0, v=3.0, m=5.0, dm_dt=0.1)

print("Momentum:", client.momentum())   # → 15.0
print("NKTg₁:", client.nktg1())         # → 15.2
print("NKTg₂:", client.nktg2())         # → 3.04
📐 Parameters
Parameter	Description
x	Position of the object
v	Velocity of the object
m	Mass of the object
dm_dt	Rate of change of mass over time
🧪 Testing
To run unit tests:

bash
pytest tests/
📚 Documentation
Overview of NKTg Law

API Reference

Licensing Terms

📄 License
This SDK is dual-licensed under:

GNU General Public License v3.0 (LICENSE)

Commercial License (COMMERCIAL-LICENSE.txt)

Please refer to the licensing guide for details.
