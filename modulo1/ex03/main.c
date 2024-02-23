#include <stdio.h>
#include "sum_even.h"

// Main do ex03 do módulo 01
int main()
{
    int vec[] = {6, 1, 6};

    int *ptr;
    ptr=vec;
   
    int sommation = sum_even(ptr, 3);

    printf("%d",sommation);

    return 0;
}