#include <stdio.h>
#include "sort_without_reps.h"

// Main do ex09 do módulo 01
int main()
{
    int vec[] = {2,0,1};
    int n = 3;
    int vec2[3];

    int novo;
    novo = sort_without_reps(vec,n,vec2);

    int i;
    for (i = 0; i < novo  ; i++)
	{
		printf("%d ", *(vec2 + i));
	}

    printf("\n%d\n", novo);

    return 0;
}