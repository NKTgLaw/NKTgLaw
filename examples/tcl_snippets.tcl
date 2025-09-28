# Tcl: Tool Command Language for scripting and automation
set x 2.0
set v 3.0
set m 5.0
set dm_dt 0.1
set p [expr {$m * $v}]
set NKTg1 [expr {$x * $p}]
set NKTg2 [expr {$dm_dt * $p}]
puts "p=$p NKTg1=$NKTg1 NKTg2=$NKTg2"
