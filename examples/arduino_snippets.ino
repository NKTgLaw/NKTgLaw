// Arduino: microcontroller programming
void setup() {
  Serial.begin(9600);
  float x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
  float p = m * v;
  float NKTg1 = x * p;
  float NKTg2 = dm_dt * p;
  Serial.print("p="); Serial.print(p);
  Serial.print(" NKTg1="); Serial.print(NKTg1);
  Serial.print(" NKTg2="); Serial.println(NKTg2);
}

void loop() {
  // Nothing here
}
