#include <stdio.h>
#include "compress_shorts.h"

// Main do ex18 do módulo 01
int main()
{
    short shorts[] = {0x1111, 0x2222, 0x3333, 0x4444};
    int n_shorts = 4;
    int integers[2];

    compress_shorts(shorts, n_shorts, integers);

    int i;
    for (i = 0; i < 2; i++)
    {
        printf("%x\n", integers[i]);
    }

    return 0;
}
