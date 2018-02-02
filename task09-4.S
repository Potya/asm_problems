        .text
        .global process
process:
        push    %ebp
        movl    %esp, %ebp
        movl    $0, %eax
        push    %eax
read:   leal    -8(%ebp), %eax
        push    %eax
        leal    -12(%ebp), %eax
        push    %eax
        leal    -16(%ebp), %eax
        push    %eax
        leal    -20(%ebp), %eax
        push    %eax
        push    $form
        call    scanf
        cmpl    $0, %eax
        jl      ending
        pop     %eax
        pop     %eax
        pop     %ecx
        pop     %edx
        cmpl    %eax, %edx
        jg      dx_l
a_cmp:  pop     %edx
        //addl    $20, %esp
        cmpl    %ecx, %edx
        jl      dx_b
tr_ch:  cmpl    %eax, %ecx
        jl      read
        subl    %eax, %ecx
        pop     %edx
        addl    %ecx, %edx
        //addl    $4, %esp
        push    %edx
        jmp     read

ending: addl    $20, %esp
        push    $out
        call    printf
        addl    $8, %esp
        pop     %ebp
        ret

dx_l:   movl    %edx, %eax
        jmp     a_cmp

dx_b:   movl    %edx, %ecx
        jmp     tr_ch


        .data
        .global sum, form, out
form:   .asciz  "%d %d %d %d"
out:    .asciz  "%d\n"
