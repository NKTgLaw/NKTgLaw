# NKTg Law SDK – Go Implementation

This is the official Go SDK for modeling variable mass motion using the NKTg Law. It provides a simple interface for computing momentum and two forms of NKTg expressions.

---

## 📦 Build & Run

Make sure you have Go installed (version 1.20 or higher).

```bash
cd clients/go
go build ./...
🚀 Example
bash
go run example/main.go
🧪 Run Tests
Unit tests are written using Go's built-in testing framework.

bash
go test
📊 Benchmark
To measure performance of the SDK:

bash
go run ../../benchmarks/benchmark.go
📁 Project Structure
Mã
clients/go/
├── nktg/           # SDK source code
│   └── client.go
├── example/        # Sample usage
│   └── main.go
├── nktg_test.go    # Unit tests
├── go.mod          # Module definition
└── README.md       # Documentation

benchmarks/
└── benchmark.go    # Go performance test
📄 License
NKTgLaw is available under a dual licensing model:

1. GPL-3.0 License (Open Source)
You can use, modify, and redistribute NKTgLaw under the terms of the GPL-3.0 License. This version is free and requires that any derivative works are also released under GPL-3.0.

2. Commercial License (Proprietary)
For commercial use without the GPL obligations, a commercial license is required. See LICENSE-commercial.txt for terms and conditions. Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.

Note: Each user must choose either the GPL license or the Commercial license. Combining both is not permitted for the same use case.

Mã

---

Let me know if you'd like me to regenerate the README for other languages too, or add license badges and links. You're building a world-class multi-language SDK suite com!
