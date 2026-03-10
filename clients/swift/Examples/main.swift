import NKTgLaw

// Initializing the client with: x=2.0, v=3.0, m=5.0, dmDt=0.1
let client = NKTgClient(x: 2.0, v: 3.0, m: 5.0, dmDt: 0.1)

// Expected results based on Product Logic (x * p and dmDt * p)
print("Momentum: \(client.momentum())") // Output: 15.0
print("NKTg₁: \(client.nktg1())")        // Output: 30.0 (x * p)
print("NKTg₂: \(client.nktg2())")        // Output: 1.5  (dmDt * p)
