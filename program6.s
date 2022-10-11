.data
    x: .long 1
    y: .long 0
    _and: .space 4
    _or: .space 4
    _xor: .space 4
.text
.globl main
main:
    mov x, %eax
    and y, %eax
    mov %eax, _and

    mov x, %eax
    or y, %eax
    mov %eax, _or

    mov x, %eax
    xor y, %eax
    mov %eax, _xor

    mov $1, %eax
    mov $0, %ebx
    int $0x80
