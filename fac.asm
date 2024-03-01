BITS 64

GLOBAL my_sous

my_sous:
    xor rax, rax
    jmp loop
    
loop:
    cmp byte[rdi], sil
    je found
    cmp byte[rdi], 0
    je not_found
    inc rax
    jmp loop

found:
    mov rax, [rdx - 1]
    ret

not_found:
    mov rax, 0
    ret
