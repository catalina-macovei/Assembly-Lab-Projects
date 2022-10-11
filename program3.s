.data
.text
.global _start
_start:
    call main
main:
        movl $0, %eax
        mov $2, %ah
        mov $8, %al

        mov $1, %eax
        mov $0, %ebx
        int $0x80
