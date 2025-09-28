# Janet: functional and imperative language for embedded scripting
(def x 2.0)
(def v 3.0)
(def m 5.0)
(def dm_dt 0.1)
(def p (* m v))
(def NKTg1 (* x p))
(def NKTg2 (* dm_dt p))
(print "p=" p " NKTg1=" NKTg1 " NKTg2=" NKTg2)
