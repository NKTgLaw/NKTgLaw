namespace NKTgLaw.Tests {
    open Microsoft.Quantum.Diagnostics;
    open NKTgLaw;

    @Test("QuantumSimulator")
    operation TestNKTg1() : Unit {
        let result = NKTg1(5.0, 3.0, 0.1, 2.0);
        AssertApproximatelyEqualD(result, 15.2, 1e-6, "NKTg₁ calculation failed.");
    }

    @Test("QuantumSimulator")
    operation TestNKTg2() : Unit {
        let result = NKTg2(5.0, 3.0, 0.1, 2.0);
        AssertApproximatelyEqualD(result, 3.04, 1e-6, "NKTg₂ calculation failed.");
    }
}
