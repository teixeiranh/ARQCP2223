#include <stdio.h>
#include "array_sort1.h"

// Main do ex07 do módulo 01
int main()
{
    int vec[]={5,4,3};

    array_sort1(vec,3);
    int i;

    for ( i = 0; i < 3; i++)
    {
        printf("%d",vec[i]);
    }

    return 0;
}