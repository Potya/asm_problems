        .text
        .global print_fib
print_fib:
        push    %ebp
        mov     %esp, %ebp
        mov     A, %eax
        add     B, %eax
        mov     %eax, %ecx
        add     B, %ecx
        mov     %ecx, %edx
        add     %eax, %edx
        push    %edx
        push    %ecx
        push    %eax
        push    $form
        call    printf
        add     $16, %esp
        pop     %ebp
        ret

form:   .asciz  "%d %d %d\n"
        .align  16
