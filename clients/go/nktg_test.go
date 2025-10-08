package nktg

import "testing"

func TestNKTg1(t *testing.T) {
    client := NewClient(2, 3, 5, 0.1)
    expected := 15.2
    if client.NKTg1() != expected {
        t.Errorf("Expected NKTg1 to be %.2f, got %.2f", expected, client.NKTg1())
    }
}

func TestNKTg2(t *testing.T) {
    client := NewClient(2, 3, 5, 0.1)
    expected := 3.04
    if client.NKTg2() != expected {
        t.Errorf("Expected NKTg2 to be %.2f, got %.2f", expected, client.NKTg2())
    }
}
