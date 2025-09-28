// Verilog: hardware description language
module NKTgLaw;
  real x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
  real p, NKTg1, NKTg2;
  initial begin
    p = m * v;
    NKTg1 = x * p;
    NKTg2 = dm_dt * p;
    $display("p=%f NKTg1=%f NKTg2=%f", p, NKTg1, NKTg2);
  end
endmodule
