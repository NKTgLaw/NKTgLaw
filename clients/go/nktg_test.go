package nktg

import "testing"

/**
 * NKTg Law Unit Tests
 * Validates the Product Logic for Universal Dynamics.
 */

func TestNKTg1(t *testing.T) {
    client := NewClient(2.0, 3.0, 5.0, 0.1)
    expected := 30.0 // Corrected: x * (m * v) = 2 * 15
    if client.NKTg1() != expected {
        t.Errorf("Expected NKTg1 to be %.2f, got %.2f", expected, client.NKTg1())
    }
}

func TestNKTg2(t *testing.T) {
    client := NewClient(2.0, 3.0, 5.0, 0.1)
    expected := 1.5 // Corrected: (dm/dt) * (m * v) = 0.1 * 15
    if client.NKTg2() != expected {
        t.Errorf("Expected NKTg2 to be %.2f, got %.2f", expected, client.NKTg2())
    }
}
