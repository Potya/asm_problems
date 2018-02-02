        .text
        .global main

main:
        call    readi32
        movl    %eax, %ebx
my_c:   cmpl    $0,%ebx
        jl      ending
        movl    %ebx, %eax
        call    writei32
        call    nl
        subl    $1, %ebx
        jmp     my_c
ending: call    finish
