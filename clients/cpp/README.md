# NKTg Law – C++ SDK & API Wrapper

This is the official C++ implementation of the **NKTg Law of Varying Inertia**. It provides a high-performance `NKTgClient` class and an integrated HTTP API server using `httplib`.

## 🔬 Mathematical Logic
The core implementation strictly follows the **Product Quantity** logic to ensure physical accuracy:
- **Momentum (p)**: $m \times v$
- **NKTg1**: $x \times p$
- **NKTg2**: $\frac{dm}{dt} \times p$

## 📦 Usage

To use the NKTg logic in your C++ project, include the client class:

```cpp
#include "NKTgClient.cpp"

int main() {
    // x=2.0, v=3.0, m=5.0, dm/dt=0.1
    NKTgClient client(2.0, 3.0, 5.0, 0.1);
    
    std::cout << "NKTg1: " << client.nktg1() << std::endl; // Output: 30.0
    std::cout << "NKTg2: " << client.nktg2() << std::endl; // Output: 1.5
}
🚀 Building with CMakeWe use CMake to manage dependencies (like Threads and httplib).Bashmkdir build && cd build
cmake ..
make
Binaries produced:example: Basic CLI usage of the NKTg Law.test_api: Runs the NKTg Universa API server on port 8080.test_core: Unit tests for logic validation.🧪 TestingThe test suite validates the results against the standard experimental dataset ($30.0$ and $1.5$):Bash./test_core
📄 LicenseThis wrapper is part of the NKTg Law Library and follows the same dual-license terms:GPL-3.0 License (Open Source)Commercial License (Proprietary)Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.
