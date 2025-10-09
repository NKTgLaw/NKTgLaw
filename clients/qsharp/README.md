# NKTg Law SDK – Q# Implementation

This SDK implements the NKTg Law in Q#, suitable for quantum simulation environments.

## 📁 Structure

```
clients/qsharp/
├── src/
│   └── NKTgClient.qs           # Core logic
├── example/
│   └── RunNKTg.qs              # Example usage
├── tests/
│   └── NKTgClientTests.qs      # Unit tests
├── NKTgLaw.qproj               # Q# project file
├── README.md                   # Documentation

```

## 🚀 Run Example

```
dotnet run --project clients/qsharp/NKTgLaw.qproj

🧪 Run Tests

dotnet test clients/qsharp/NKTgLaw.qproj

📊 Benchmark

dotnet run --project benchmarks/benchmark.qs

📄 License
NKTgLaw is available under a dual licensing model:

GPL-3.0 License (Open Source)

Commercial License (Proprietary)

Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.
