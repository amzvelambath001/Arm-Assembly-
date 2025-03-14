.global _start
_start:

    mov     r0, #'P' 
    mov     r1, #'A'
    mov     r2, #'I'
    mov     r3, #'L'
    mov     r4, #'Y'
    mov     r5, #'T'
    mov     r6, #'R'
    mov     r7, #'E'
    mov     r8, #'W'
    mov     r9, #'Q'

ldr r10, =outstr
strb r1,[r10]
add r10,#1
strb r0,[r10]
add r10,#1
strb r0,[r10]
add r10,#1
strb r3,[r10]
add r10,#1
strb r7,[r10]

mov r7,#4
mov r0,#1
ldr r1,=outstr
mov r2,#5
svc 0

mov r7,#1
mov r0,#0
svc 0

.data
ourstr: .ascii "     /n"
