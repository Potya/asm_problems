        .text
        .global main
main:
        movl    $0, %ebx
read:   call    readi32
        jc      ending
        addl    %eax, %ebx
        jo      over
        jmp     read
ending: movl    %ebx, %eax
        call    writei32
        call    nl
        call    finish
over:   cmp     $0, %eax
        jle     less_0
        movl    $2147483647, %eax
        call    writei32
        call    nl
        call    finish
less_0: movl    $-2147483648, %eax
        call    writei32
        call    nl
        call    finish
