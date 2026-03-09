section .text
    global compute_nktg1
    global compute_nktg2

; -----------------------------------------------------------------------------
; double compute_nktg1(double x, double v, double m, double dm_dt)
; Formula: NKTg1 = x * (m * v)
; Arguments: xmm0=x, xmm1=v, xmm2=m, xmm3=dm_dt
; -----------------------------------------------------------------------------
compute_nktg1:
    mulsd xmm1, xmm2    ; xmm1 = m * v (momentum p)
    mulsd xmm0, xmm1    ; xmm0 = x * p (NKTg1)
    ret                 ; return NKTg1 in xmm0

; -----------------------------------------------------------------------------
; double compute_nktg2(double x, double v, double m, double dm_dt)
; Formula: NKTg2 = dm_dt * (m * v)
; Arguments: xmm0=x, xmm1=v, xmm2=m, xmm3=dm_dt
; -----------------------------------------------------------------------------
compute_nktg2:
    mulsd xmm1, xmm2    ; xmm1 = m * v (momentum p)
    mulsd xmm3, xmm1    ; xmm3 = dm_dt * p (NKTg2)
    movapd xmm0, xmm3   ; move result to xmm0 for return
    ret                 ; return NKTg2 in xmm0
