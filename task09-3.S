        .global mystrcmp
mystrcmp:
        push    %ebp
        movl    %esp, %ebp
        push    %esi
        push    %edi
        movl    8(%ebp), %esi
        movl    12(%ebp), %edi
cont:   movzb   (%esi), %eax
        movzb   (%edi), %edx
        inc     %esi
        inc     %edi
        subl    %edx, %eax
        jnz     end
        test    %edx, %edx
        jnz     cont

end:    pop     %edi
        pop     %esi
        pop     %ebp
        ret
