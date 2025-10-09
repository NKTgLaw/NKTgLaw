section .data
    x      dq 2.0
    v      dq 3.0
    m      dq 5.0
    dm_dt  dq 0.1

section .text
global _start
extern compute_nktg

_start:
    mov rbx, 100000        ; loop counter

.loop:
    movsd xmm0, [x]
    movsd xmm1, [v]
    movsd xmm2, [m]
    movsd xmm3, [dm_dt]
    call compute_nktg

    dec rbx
    jnz .loop

    mov rax, 60            ; syscall: exit
    xor rdi, rdi
    syscall
