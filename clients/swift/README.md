# NKTg Law SDK – Swift Implementation

This is the official Swift SDK for modeling variable mass motion using the NKTg Law.

## 📁 Structure

```
clients/swift/
├── Sources/
│   └── NKTgClient.swift         # Core SDK logic
├── Examples/
│   └── main.swift               # Example usage
├── Tests/
│   └── NKTgClientTests.swift    # Unit tests
├── Package.swift                # SwiftPM config
└── README.md                    # Documentation

benchmarks/
└── benchmark.swift              # Performance test

.github/workflows/
└── swift-test.yml              # CI workflow

```


## 🚀 Run Example

```
swift run --package-path clients/swift
🧪 Run Tests

swift test --package-path clients/swift

## 📊 Benchmark

swift benchmark.swift

## 📄 License

NKTgLaw is available under a dual licensing model:

1. GPL-3.0 License (Open Source)
You can use, modify, and redistribute NKTgLaw under the terms of the GPL-3.0 License.

2. Commercial License (Proprietary)
For commercial use without the GPL obligations, a commercial license is required. See LICENSE-commercial.txt for terms and conditions. Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.

Note: Each user must choose either the GPL license or the Commercial license. Combining both is not permitted for the same use case.
