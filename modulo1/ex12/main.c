#include <stdio.h>
#include "capitalize.h"

// Main do ex12 do módulo 01
int main()
{

    char string1[32] = "The number must be saved";
    char string2[32] = "The maximum value of this CYCLE";

    capitalize(string1);
    capitalize(string2);

    printf("%s\n", string1);
    printf("%s\n", string2);

    return 0;
}