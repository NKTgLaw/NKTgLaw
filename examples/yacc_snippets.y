/* Yacc: parser generator, not suitable for arithmetic directly */
/* This file is a placeholder to represent Yacc’s role in syntax parsing */
%{
  /* C code block */
  double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
  double p = m * v;
  double NKTg1 = x * p;
  double NKTg2 = dm_dt * p;
  printf("p=%f NKTg1=%f NKTg2=%f\n", p, NKTg1, NKTg2);
%}
%%
/* grammar rules would go here */
%%
