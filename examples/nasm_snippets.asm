; NASM: Netwide Assembler for x86 assembly
section .data
  x     dq 2.0
  v     dq 3.0
  m     dq 5.0
  dm_dt dq 0.1

section .text
  global _start
_start:
  ; Assembly math requires floating-point instructions (omitted for brevity)
  ; Concept: p = m * v; NKTg1 = x * p; NKTg2 = dm_dt * p
  ; Display results using syscall or external C function
