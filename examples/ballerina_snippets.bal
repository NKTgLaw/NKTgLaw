// Ballerina: cloud-native programming language
import ballerina/io;

public function main() {
    float x = 2.0;
    float v = 3.0;
    float m = 5.0;
    float dm_dt = 0.1;
    float p = m * v;
    float NKTg1 = x * p;
    float NKTg2 = dm_dt * p;
    io:println("p=", p, " NKTg1=", NKTg1, " NKTg2=", NKTg2);
}
