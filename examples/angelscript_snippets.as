// AngelScript: scripting language for game engines
void main() {
  float x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
  float p = m * v;
  float NKTg1 = x * p;
  float NKTg2 = dm_dt * p;
  print("p=" + p + " NKTg1=" + NKTg1 + " NKTg2=" + NKTg2);
}
