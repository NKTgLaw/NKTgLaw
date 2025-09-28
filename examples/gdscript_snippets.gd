# GDScript: scripting language for Godot game engine
func _ready():
    var x = 2.0
    var v = 3.0
    var m = 5.0
    var dm_dt = 0.1
    var p = m * v
    var NKTg1 = x * p
    var NKTg2 = dm_dt * p
    print("p=%s NKTg1=%s NKTg2=%s" % [p, NKTg1, NKTg2])
