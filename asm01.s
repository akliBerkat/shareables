section .data
    message db '1337', 0xA ; saut de ligne a la fin
    message_len db 5 ; 

section .text
    global _start

_start:
    
    mov rax, 1          ; write
    mov rdi, 1          ; stdout
    mov rsi, message    ; Adresse du message
    mov rdx, message_len; Taille du message
    syscall             
    
    ;asm00
    xor rdi, rdi
    mov rax, 60
    syscall
