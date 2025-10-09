section .data
    msg db "Hello from NKTgLaw Assembly!", 0Ah

section .text
    global _start

_start:
    mov eax, 4          ; syscall: write
    mov ebx, 1          ; file descriptor: stdout
    mov ecx, msg        ; pointer to message
    mov edx, 28         ; message length
    int 0x80            ; call kernel

    mov eax, 1          ; syscall: exit
    xor ebx, ebx        ; exit code 0
    int 0x80
