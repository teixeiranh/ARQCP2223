#include <stdio.h>
#include "frequencies.h"

// Main do ex14 do módulo 01
int main()
{

    float grades1[] = {8.23, 12.25, 16.45};
    int n = 3;
    int freq[21];

    frequencies(grades1, n, freq);

    for (int i = 0; i <= 20; i++)
    {
        printf("P%d:%d\n",i,freq[i]);
    }

    return 0;
}