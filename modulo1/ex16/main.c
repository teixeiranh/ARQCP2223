#include <stdio.h>
#include "where_exists.h"

// Main do ex16 do módulo 01
int main()
{

    // char string1[30] = "Make it rain!";
    char string2[30] = "Make rain!";
    char string1[30] = "rain!";

    char *pst;
    pst = where_exists(string1, string2);

    //printf("%d\n", pst);
    printf("%s\n", pst);

    return 0;
}