// Pike: dynamic language for system and network programming
int main() {
  float x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
  float p = m * v;
  float NKTg1 = x * p;
  float NKTg2 = dm_dt * p;
  write("p=%f NKTg1=%f NKTg2=%f\n", p, NKTg1, NKTg2);
  return 0;
}
