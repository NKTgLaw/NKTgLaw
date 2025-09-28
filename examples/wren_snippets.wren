// Wren: small, fast scripting language for embedding
var x = 2.0
var v = 3.0
var m = 5.0
var dm_dt = 0.1
var p = m * v
var NKTg1 = x * p
var NKTg2 = dm_dt * p
System.print("p=%(p) NKTg1=%(NKTg1) NKTg2=%(NKTg2)")
