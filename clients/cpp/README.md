# NKTg Law – C++ Wrapper

This is the official C++ wrapper for the NKTg Law Library. It provides a simple class `NKTgClient` to compute momentum, NKTg₁, and NKTg₂.

---

## 📦 Usage

```cpp
#include "nktg_law/NKTgClient.cpp"

int main() {
    NKTgClient client(2.0, 3.0, 5.0, 0.1);
    std::cout << client.nktg1() << std::endl;
}
🧪 Testing
To run the test:

bash
g++ clients/cpp/tests/test_nktg.cpp -o test && ./test
📄 License
This wrapper is part of the NKTg Law Library and follows the same dual-license terms.

Mã
