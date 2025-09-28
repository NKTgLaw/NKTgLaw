# Shell script: basic scripting in Unix/Linux
x=2.0; v=3.0; m=5.0; dm_dt=0.1
p=$(echo "$m * $v" | bc)
NKTg1=$(echo "$x * $p" | bc)
NKTg2=$(echo "$dm_dt * $p" | bc)
echo "p=$p NKTg1=$NKTg1 NKTg2=$NKTg2"
