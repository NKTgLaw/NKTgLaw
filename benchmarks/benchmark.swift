import Foundation
import NKTgLaw

let start = CFAbsoluteTimeGetCurrent()

for _ in 0..<100_000 {
    let client = NKTgClient(x: 2.0, v: 3.0, m: 5.0, dmDt: 0.1)
    _ = client.momentum()
    _ = client.nktg1()
    _ = client.nktg2()
}

let end = CFAbsoluteTimeGetCurrent()
print("Executed 100,000 iterations in \(end - start) seconds")
