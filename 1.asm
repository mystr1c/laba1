%include "io.inc"
; a*(b+c)
; 28 21 17
; -15 12 -22
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    MOV AL, 0xFFF1;0x1C
    MOV BL, 0xC; 0x15
    MOV CL, 0xFFEA; 0x11
    ADD BL, CL
    MUL BL
    PRINT_UDEC 1,AL; AX 
    xor eax, eax
    ret
