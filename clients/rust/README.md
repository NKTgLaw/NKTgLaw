# NKTg Law SDK – Rust Implementation

This is the official Rust SDK for modeling variable mass motion and computing technical interaction forces using the **NKTg Law of Varying Inertia**.

## 📁 Structure

```text
clients/rust/
├── src/
│   ├── lib.rs          # Core logic (NKTgClient struct)
│   └── main.rs         # Example binary execution
├── tests/
│   └── nktg_tests.rs   # Comprehensive unit tests
├── Cargo.toml          # Rust package configuration
└── README.md           # This documentation
🚀 Run ExampleTo execute the sample and verify the calculations ($x \cdot p$ and $\dot{m} \cdot p$):Bashcargo run
🧪 Run TestsTo verify the mathematical integrity of the Rust implementation:Bashcargo test
📊 BenchmarkFor performance analysis of the varying inertia algorithms:Bashcargo run --bin benchmark
📄 LicenseNKTgLaw is distributed under a dual licensing model:GPL-3.0 License (Open Source):You can use, modify, and redistribute NKTgLaw under the terms of the GNU General Public License v3.0.Commercial License (Proprietary):For commercial applications seeking to avoid GPL obligations, a proprietary license is required. See LICENSE-commercial.txt for terms.Contact: Reach out to Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing inquiries and technical support.Note: Users must choose one license model. Combining both for the same use case is not permitted.
