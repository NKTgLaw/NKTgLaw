;; Lisp: symbolic computation, AI research
(let* ((x 2.0)
       (v 3.0)
       (m 5.0)
       (dm_dt 0.1)
       (p (* m v))
       (nktg1 (* x p))
       (nktg2 (* dm_dt p)))
  (format t "p=~a NKTg1=~a NKTg2=~a~%" p nktg1 nktg2))
