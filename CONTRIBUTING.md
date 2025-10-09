🤝 Contributing to NKTgLaw
Welcome! We're excited that you're interested in contributing to the NKTgLaw project — a multi-language implementation of the NKTg Law on Varying Inertia. Whether you're fixing a typo, adding a new client wrapper, improving performance, or expanding documentation, your contribution is valuable.

🧩 What You Can Contribute
✨ Add a new language implementation in examples/

🧪 Improve or expand unit tests in tests/

🛠 Enhance the core library in core/

📦 Build or refine client SDKs in clients/

📚 Improve documentation in docs/ or foundations/

🚀 Optimize performance in benchmarks/

🌐 Help translate or localize content

📋 Contribution Guidelines
Fork the repository and create your branch:

bash
git checkout -b feature/my-contribution
Follow naming conventions and keep code clean and readable.

Add tests if applicable, especially for core logic or SDKs.

Document your changes clearly in code and commit messages.

Submit a pull request with a clear description of your changes.

✅ Code Standards
Python: PEP8, use pytest for tests

C++: C++17+, use GoogleTest or Catch2

Rust: idiomatic Rust, use cargo test

Go: use go fmt and go test

Java: use JUnit and follow standard naming conventions

📦 Adding a New Language Example
To contribute a new implementation of the NKTg Law in a different language:

Create a file in examples/ named NKTgLaw.<language>

Use default parameters: x=2, v=3, m=5, dm_dt=0.1

Calculate:

p = m * v

NKTg₁ = x * p

NKTg₂ = dm_dt * p

Make sure the code is self-contained and runnable.

📜 Licensing
By contributing, you agree that your code will be released under the dual-license model of NKTgLaw:

GPL-3.0 for open source use

Commercial license for proprietary use

🙏 Thank You
Your contributions help expand the reach and understanding of the NKTg Law across platforms and communities. We appreciate your time, effort, and curiosity.

Let’s build something extraordinary — together.
