package main

import (
    "fmt"
    "time"
    "github.com/NKTgLaw/NKTgLaw/clients/go/nktg"
)

func main() {
    iterations := 100000
    start := time.Now()

    for i := 0; i < iterations; i++ {
        client := nktg.NewClient(2.0, 3.0, 5.0, 0.1)
        client.Momentum()
        client.NKTg1()
        client.NKTg2()
    }

    elapsed := time.Since(start)
    fmt.Printf("Ran %d iterations in %s\n", iterations, elapsed)
    fmt.Printf("Average time per iteration: %.6f ms\n", float64(elapsed.Milliseconds())/float64(iterations))
}
