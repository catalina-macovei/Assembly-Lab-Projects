#include <stdio.h>
int x = 1, y=2, aux = 0;
//Interschimbarea a 2 variabile:
int main()
{
    __asm__
    (
        "pusha;"

        "mov x, %eax;"
        "mov %eax, aux;"
        "mov y, %eax;"
        "mov %eax, x;"
        "mov aux, %eax;"
        "mov %eax, y;"

        "popa;"
    );

    printf("%d\n%d", x, y);
    return 0;
}