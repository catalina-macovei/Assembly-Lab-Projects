.global _start
_start:
    call main
main:
        mov $1, %eax
        mov $0, %ebx
        int $0x80
