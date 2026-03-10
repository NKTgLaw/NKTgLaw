# NKTg Law SDK – Q# Implementation

Official implementation of the **NKTg Law of Varying Inertia** in Q#, specifically designed for quantum simulation environments and hybrid quantum-classical workflows.

## 📁 Structure

```text
clients/qsharp/
├── src/                # Core logic (NKTgClient.qs)
├── example/            # Entry point for execution (RunNKTg.qs)
├── tests/              # Unit tests (NKTgClientTests.qs)
├── NKTgLaw.qproj       # Q# project configuration
└── README.md           # Documentation
🚀 Run ExampleTo execute the sample simulation and see the Product Logic results ($NKTg_1 = 30.0$, $NKTg_2 = 1.5$):Bashdotnet run --project clients/qsharp/NKTgLaw.qproj
🧪 Run TestsTo verify the mathematical accuracy within the Quantum SDK:Bashdotnet test clients/qsharp/NKTgLaw.qproj
📊 BenchmarkFor performance analysis of the varying inertia model:Bashdotnet run --project benchmarks/benchmark.qs
📄 LicenseNKTgLaw is available under a dual licensing model:GPL-3.0 License (Open Source)Commercial License (Proprietary)Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and professional support.
