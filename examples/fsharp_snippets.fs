// F#: functional-first language on .NET
let x = 2.0
let v = 3.0
let m = 5.0
let dm_dt = 0.1
let p = m * v
let NKTg1 = x * p
let NKTg2 = dm_dt * p
printfn "p=%f NKTg1=%f NKTg2=%f" p NKTg1 NKTg2
