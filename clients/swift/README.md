# NKTg Law SDK – Swift Implementation

Official Swift SDK for modeling variable mass motion and computing technical interaction forces using the **NKTg Law of Varying Inertia**.

## 📁 Structure

```text
clients/swift/
├── Sources/
│   └── NKTgClient.swift       # Core SDK logic (NKTgClient struct)
├── Examples/
│   └── main.swift             # Entry point for execution
├── Tests/
│   └── NKTgClientTests.swift  # Unit tests for logic validation
├── Package.swift              # Swift Package Manager configuration
└── README.md                  # Documentation
🚀 Run ExampleTo execute the sample and verify the product-based results:Bashswift run --package-path clients/swift
🧪 Run TestsTo verify mathematical integrity ($NKTg_1 = 30.0$, $NKTg_2 = 1.5$):Bashswift test --package-path clients/swift
📊 BenchmarkFor performance analysis within the Swift environment:Bashswift benchmarks/benchmark.swift
📄 LicenseNKTgLaw is distributed under a dual licensing model:GPL-3.0 License (Open Source):You can use, modify, and redistribute NKTgLaw under the terms of the GNU General Public License v3.0.Commercial License (Proprietary):For commercial applications seeking to avoid GPL obligations, a proprietary license is required. Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing inquiries and technical support.Note: Users must choose one license model. Combining both for the same use case is not permitted.
