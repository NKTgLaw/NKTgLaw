# NKTg Law – Go SDK

This is the official Go implementation of the **NKTg Law of Varying Inertia**. Designed for high-performance physics simulations and backend integrations, this SDK provides a clean, idiomatic Go interface.

## 🔬 Physical Logic
The implementation strictly adheres to the **Product Quantity** logic to ensure universal consistency:
- **Momentum ($p$):** $m \times v$
- **NKTg1:** $x \times p$
- **NKTg2:** $\frac{dm}{dt} \times p$

## 📦 Installation & Build

Ensure you have **Go 1.20** or higher installed.

```bash
cd clients/go
go mod tidy
go build ./...
🚀 Quick StartTo run the provided example and verify the experimental constants ($30.0$ and $1.5$):Bashgo run example/main.go
Usage Example:Goimport "[github.com/NKTgLaw/NKTgLaw/clients/go/nktg](https://github.com/NKTgLaw/NKTgLaw/clients/go/nktg)"

client := nktg.NewClient(2.0, 3.0, 5.0, 0.1)
fmt.Println("NKTg1:", client.NKTg1()) // Output: 30.0
🧪 TestingWe use Go's native testing framework to validate the mathematical accuracy:Bashgo test -v ./...
📁 Project StructurePlaintextclients/go/
├── nktg/           # Core SDK package logic
│   └── client.go   # Struct and Methods (Product Logic)
├── example/        # Sample implementation
│   └── main.go
├── go.mod          # Module definition (v1.20)
├── nktg_test.go    # Unit tests for verification
└── README.md       # This documentation
📄 LicenseThis SDK is part of the NKTg Law Library and follows a dual-licensing model:GPL-3.0 License: Open-source usage for the community.Commercial License: Proprietary use without GPL obligations.Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and commercial support.
