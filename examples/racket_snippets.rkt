# Racket: descendant of Scheme for scripting and education
#lang racket
(define x 2.0)
(define v 3.0)
(define m 5.0)
(define dm_dt 0.1)
(define p (* m v))
(define NKTg1 (* x p))
(define NKTg2 (* dm_dt p))
(displayln (format "p=~a NKTg1=~a NKTg2=~a" p NKTg1 NKTg2))
