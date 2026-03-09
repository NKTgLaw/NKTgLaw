; -----------------------------------------------------------------------------
; NKTg Law Core - Assembly Implementation (x86-64)
; Standardized logic: All calculations are Product Quantities (Multiplication)
; Expected for (x=2.0, v=3.0, m=5.0, dm_dt=0.1): 
; compute_nktg1 -> 30.0
; compute_nktg2 -> 1.5
; -----------------------------------------------------------------------------

section .text
    global compute_nktg1
    global compute_nktg2

; double compute_nktg1(double x, double v, double m, double dm_dt)
; Formula: NKTg1 = x * (m * v)
compute_nktg1:
    ; Arguments: xmm0=x, xmm1=v, xmm2=m, xmm3=dm_dt
    mulsd xmm1, xmm2    ; xmm1 = m * v (momentum p)
    mulsd xmm0, xmm1    ; xmm0 = x * p (NKTg1)
    ret                 ; return result in xmm0

; double compute_nktg2(double x, double v, double m, double dm_dt)
; Formula: NKTg2 = dm_dt * (m * v)
compute_nktg2:
    ; Arguments: xmm0=x, xmm1=v, xmm2=m, xmm3=dm_dt
    mulsd xmm1, xmm2    ; xmm1 = m * v (momentum p)
    mulsd xmm3, xmm1    ; xmm3 = dm_dt * p (NKTg2)
    movapd xmm0, xmm3   ; move NKTg2 to return register xmm0
    ret                 ; return result in xmm0
