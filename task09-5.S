        .data
        .global process
process:
        push    %ebp
        movl    %esp, %ebp
        leal    -4(%ebp), %eax
        push    %eax
        push    $form
        call    scanf
        pop     %eax
        pop     %eax
        cmpl    $0, %eax
        jle     beeeee
        push    %eax
        push    %eax
read:   leal    -4(%esp), %eax
        push    %eax
        push    $form
        call    scanf
        pop     %eax
        pop     %ecx
        pop     %edx
        push    %ecx
        push    $out
        decl    %edx
        cmpl    $0, %edx
        jle     pr
        push    %edx
        jmp     read

beeeee: push    $n_l
        call    printf
        pop     %eax
        pop     %ebp
        ret

pr:     //movl    %edx, %eax
        //call    writei32
        //call    nl
        pop     %eax
        pop     %eax
        push    %edx
        push    %eax
        push    $out
        call    printf
        //movl    %edx, %eax
        //call    writei32
        //call    nl
        pop     %eax
        pop     %eax
        pop     %edx
        incl    %edx
        movl    -4(%ebp), %ecx
        cmpl    %edx, %ecx
        jle     ending
        jmp     pr

        /*leal    -4(%esp), %eax
        push    %eax
        push    $form
        call    scanf
        pop     %eax
        pop     %ecx
        pop     %edx
        push    %ecx
        push    $out
        push    %ecx
        pop     %eax
        call    printf
        pop     %eax
        pop     %eax
        call    printf*/
ending: push    $n_l
        call    printf
        pop     %eax
        pop     %eax
        pop     %ebp
        ret


        .data
        .global form, out, n_l
form:   .asciz  "%d"
out:    .asciz  "%d "
n_l:    .asciz  "\n"

