#include <stdio.h>
#include "upper1.h"

// Função inicial main do ex04 do módulo 01
int main()
{
    char string[32]="Hello";

    upper1(string);

    printf("%s",string);

    return 0;
}