📦 Installation
You can install the SDK using npm:

bash
npm install nktg-law
Or if you're using it directly from a GitHub repository:

bash
npm install git+https://github.com/NKTgLaw/nktg-law-library.git#subdirectory=clients/javascript
🚀 Usage
javascript
const { NKTgClient } = require('nktg-law');

const client = new NKTgClient(2, 3, 5, 0.1);

console.log("Momentum:", client.momentum()); // Output: 15
console.log("NKTg₁:", client.nktg1());       // Output: 15.2
console.log("NKTg₂:", client.nktg2());       // Output: 3.04
🧠 What is NKTg Law?
NKTg Law is a physics-based model that describes the behavior of objects with variable mass. It introduces two key quantities:

momentum = mass × velocity

NKTg₁ = momentum + (dm/dt × position)

NKTg₂ = NKTg₁ / mass

These formulas help simulate dynamic systems where mass changes over time.

🧪 Running Tests
This SDK includes automated tests using Jest. To run them:

bash
npm install
npm test
📁 Project Structure

clients/javascript/
```bash
├── src/               # SDK source code
│   └── index.js
├── test/              # Unit tests
│   └── nktg.test.js
├── example.js         # Usage example
├── README.md          # Documentation
├── package.json       # Package configuration
├── .gitignore         # Ignored files
└── jest.config.js     # Jest configuration
```

📄 License
This project is licensed under a dual licensing model
