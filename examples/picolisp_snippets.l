# PicoLisp: minimalist Lisp dialect
(setq x 2.0 v 3.0 m 5.0 dm_dt 0.1)
(setq p (* m v))
(setq NKTg1 (* x p))
(setq NKTg2 (* dm_dt p))
(prinl "p=" p " NKTg1=" NKTg1 " NKTg2=" NKTg2)
