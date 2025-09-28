// SpinalHDL: hardware description language based on Scala
object NKTgLaw extends Component {
  val x = U(2.0)
  val v = U(3.0)
  val m = U(5.0)
  val dm_dt = U(0.1)
  val p = m * v
  val NKTg1 = x * p
  val NKTg2 = dm_dt * p
  println(s"p=$p NKTg1=$NKTg1 NKTg2=$NKTg2")
}
