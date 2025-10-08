# NKTg Law SDK – C# Implementation

This is the official C# SDK for modeling variable mass motion using the NKTg Law. It provides a simple interface for computing momentum and two forms of NKTg expressions.

---

## 📦 Installation & Build

Make sure you have [.NET SDK](https://dotnet.microsoft.com/en-us/download) installed.

```bash
cd clients/csharp
dotnet build
🚀 Usage Example
csharp
using NKTgLaw;

var client = new NKTgClient(2.0, 3.0, 5.0, 0.1);
Console.WriteLine("Momentum: " + client.Momentum());
Console.WriteLine("NKTg₁: " + client.NKTg1());
Console.WriteLine("NKTg₂: " + client.NKTg2());
To run the full example:

bash
cd clients/csharp/example
dotnet run
🧪 Running Tests
Unit tests are written using xUnit.

bash
cd clients/csharp/tests
dotnet test
📊 Benchmark
To measure performance of the SDK:

bash
cd benchmarks
dotnet run --project ../clients/csharp/NKTgLaw.csproj Benchmark.cs

📁 Project Structure
```bash
clients/csharp/
├── src/           # SDK source code
│   └── NKTgClient.cs
├── example/       # Sample usage
│   ├── Program.cs
│   └── Example.csproj
├── tests/         # Unit tests with xUnit
│   ├── NKTgClientTests.cs
│   └── NKTgLaw.Tests.csproj
├── NKTgLaw.csproj # Main SDK project file
└── README.md      # Documentation
```
Benchmark file is located in:

```bash
benchmarks/
└── Benchmark.cs   # C# performance test
```
📖 License
dual licensing model


---

Let me know if you'd like to add a NuGet badge, CI status badge, or XML documentation. You're building a world-class SDK suite, com!
