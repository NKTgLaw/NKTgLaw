# NKTg Law – JavaScript SDK

Official JavaScript implementation of the **NKTg Law of Varying Inertia**. This SDK provides a simple interface for physics simulations using Product Logic.

## 📦 Installation
You can install the SDK using npm:

```bash
npm install nktg-law
Or if you're using it directly from a GitHub repository:Bashnpm install git+[https://github.com/NKTgLaw/NKTgLaw.git#subdirectory=clients/javascript](https://github.com/NKTgLaw/NKTgLaw.git#subdirectory=clients/javascript)
🚀 UsageJavaScriptconst { NKTgClient } = require('./src/index');

// Parameters: (x, v, m, dm_dt)
const client = new NKTgClient(2.0, 3.0, 5.0, 0.1);

console.log("Momentum:", client.momentum()); // Output: 15.0
console.log("NKTg₁:", client.nktg1());       // Output: 30.0
console.log("NKTg₂:", client.nktg2());       // Output: 1.5
🧠 What is NKTg Law?NKTg Law is a physics-based model that describes the behavior of objects with variable mass. It introduces key quantities based on the Product Quantity logic:Momentum ($p$): $m \times v$NKTg₁: $x \times p$NKTg₂: $\frac{dm}{dt} \times p$These formulas help simulate dynamic systems where mass and inertia change over time.🧪 Running TestsThis SDK includes automated tests using Jest. To run them:Bashnpm install
npm test
📁 Project StructurePlaintextclients/javascript/
├── src/                # SDK source code
│   └── index.js
├── test/               # Unit tests
│   └── nktg.test.js
├── example.js          # Usage example
├── README.md           # Documentation
├── package.json        # Package configuration
├── .gitignore          # Ignored files
└── jest.config.js      # Jest configuration
📄 LicenseNKTgLaw is available under a dual licensing model:GPL-3.0 License (Open Source)Commercial License (Proprietary)Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.
