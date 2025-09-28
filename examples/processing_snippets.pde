// Processing: visual arts and creative coding
void setup() {
  float x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
  float p = m * v;
  float NKTg1 = x * p;
  float NKTg2 = dm_dt * p;
  println("p=" + p + " NKTg1=" + NKTg1 + " NKTg2=" + NKTg2);
}
