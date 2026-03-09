# NKTg Law – Java SDK

This is the official Java implementation of the **NKTg Law of Varying Inertia**. It provides a high-performance interface for physics simulations using Product Logic.

## 🔬 Physical Logic
The implementation strictly adheres to the **Product Quantity** logic:
- **Momentum ($p$):** $m \times v$
- **NKTg1:** $x \times p$
- **NKTg2:** $\frac{dm}{dt} \times p$

## 📦 Build & Run

Ensure you have **Java 17** (or higher) and **Gradle** installed.

```bash
# Build the project
./gradlew build

# Run unit tests
./gradlew test
🚀 Quick Start
To use the SDK in your project, call the static methods from the NKTgLaw class:

Java
import nktg.NKTgLaw;

public class Example {
    public static void main(String[] args) {
        double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;

        double p = NKTgLaw.momentum(m, v);        // Result: 15.0
        double nktg1 = NKTgLaw.nktg1(x, m, v);    // Result: 30.0
        double nktg2 = NKTgLaw.nktg2(dm_dt, m, v); // Result: 1.5
        
        System.out.printf("p=%.2f NKTg1=%.2f NKTg2=%.2f%n", p, nktg1, nktg2);
    }
}
🧪 Testing
Unit tests are managed via JUnit 5:

Bash
./gradlew test
📄 License
NKTgLaw is available under a dual licensing model:

GPL-3.0 License (Open Source)

Commercial License (Proprietary)

Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.
