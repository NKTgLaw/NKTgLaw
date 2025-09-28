# Bash: shell scripting, automation
x=2.0; v=3.0; m=5.0; dm_dt=0.1
p=$(echo "$m * $v" | bc)
nktg1=$(echo "$x * $p" | bc)
nktg2=$(echo "$dm_dt * $p" | bc)
echo "p=$p NKTg1=$nktg1 NKTg2=$nktg2"
