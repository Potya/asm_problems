        .data
        .global A
        .global B
        .global C
        .global D
        .global R
A:      .int    0
B:      .int    0
C:      .int    0
D:      .int    0
R:      .int    0
        .text
        .global process
process:
        movl    A, %eax
        imull   B
        movl    %eax, %ebx
        movl    C, %eax
        imull   D
        subl    %eax, %ebx
        movl    %ebx, R
        ret
