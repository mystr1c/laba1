%include "io.inc"
; a*(b+c)
; 28 21 17
; -15 12 -22
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    FLD DWORD [b]
    FLD DWORD [c]
    
    FADD
    
    FLD DWORD [a]
    
    FMUL
    
    FST DWORD [r]
    
    ret
 
 section .data
 a: DD 0x41E00000; 0xC1700000
 b: DD 0x41A80000; 0x41400000
 c: DD 0x41880000; 0xC1B00000
 r: DD 0x00000000