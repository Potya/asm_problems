        .text
        .global satsum
satsum:
        push    %ebp
        movl    %esp, %ebp
        movl    8(%ebp), %eax
        addl    12(%ebp), %eax
        jnc     good
        movl    $4294967295, %eax
good:   pop     %ebp
        ret
