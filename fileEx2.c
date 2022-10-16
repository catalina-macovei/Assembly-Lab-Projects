#include <stdio.h>
char s[] = "";
int main(){
    __asm__
    (
        "pusha;"

        "mov $3, %eax;"
        "mov $0, %ebx;"
        "mov $s, %ecx;"
        "mov $12, %edx;"
        "int $0x80;"

        "popa;"
    );
    printf("%s",s);
    return 0;
}