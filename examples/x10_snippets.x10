// X10: parallel programming language for distributed systems
public class NKTgLaw {
  public static def main(args:Rail[String]) {
    val x:Double = 2.0;
    val v:Double = 3.0;
    val m:Double = 5.0;
    val dm_dt:Double = 0.1;
    val p = m * v;
    val NKTg1 = x * p;
    val NKTg2 = dm_dt * p;
    Console.OUT.println("p=" + p + " NKTg1=" + NKTg1 + " NKTg2=" + NKTg2);
  }
}
