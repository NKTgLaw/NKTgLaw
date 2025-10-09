section .text
global compute_nktg

; double compute_nktg(double x, double v, double m, double dm_dt)
compute_nktg:
    ; Arguments: xmm0=x, xmm1=v, xmm2=m, xmm3=dm_dt
    ; Compute: (m * v + dm_dt * x) / m

    movapd xmm4, xmm2      ; xmm4 = m
    mulsd xmm4, xmm1       ; xmm4 = m * v

    movapd xmm5, xmm3      ; xmm5 = dm_dt
    mulsd xmm5, xmm0       ; xmm5 = dm_dt * x

    addsd xmm4, xmm5       ; xmm4 = m*v + dm_dt*x
    divsd xmm4, xmm2       ; xmm4 = NKTg₂

    movapd xmm0, xmm4      ; return value in xmm0
    ret
