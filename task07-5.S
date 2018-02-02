        .text
        .global main

main:
        movl    $1, %edi
        movl    $0, %ebx
        movl    $0, %esi
read:   call    readi32
        jc      ending
        movl    %eax, %edx
        andl    $1, %eax
        cmpl    %eax, %edi
        jge     nechet
        addl    %edx, %ebx
        jmp     read

nechet: addl %edx, %esi
        jmp read



ending: movl    %ebx, %eax
        call    writei32
        call    nl
        movl    %esi, %eax
        call    writei32
        call    nl
        call    finish
