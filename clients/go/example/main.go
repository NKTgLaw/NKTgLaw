package main

import (
    "fmt"
    "github.com/NKTgLaw/NKTgLaw/clients/go/nktg"
)

func main() {
    client := nktg.NewClient(2.0, 3.0, 5.0, 0.1)
    fmt.Println("Momentum:", client.Momentum())
    fmt.Println("NKTg₁:", client.NKTg1())
    fmt.Println("NKTg₂:", client.NKTg2())
}
