-- VHDL: hardware description language for digital systems
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NKTgLaw is end NKTgLaw;

architecture Behavioral of NKTgLaw is
begin
  process
    variable x, v, m, dm_dt, p, NKTg1, NKTg2 : real := 0.0;
  begin
    x := 2.0; v := 3.0; m := 5.0; dm_dt := 0.1;
    p := m * v;
    NKTg1 := x * p;
    NKTg2 := dm_dt * p;
    report "p=" & real'image(p) & " NKTg1=" & real'image(NKTg1) & " NKTg2=" & real'image(NKTg2);
    wait;
  end process;
end Behavioral;
