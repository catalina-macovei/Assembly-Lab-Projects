.data
    x: .long 12
.text
.globl main
main:
mov x, %eax
shr $2, %eax

mov x, %eax
shl $2, %eax

mov x, %eax
sar $2, %eax

mov x, %eax
sal $2, %eax

mov $1, %eax
mov $0, %ebx
int $0x80

