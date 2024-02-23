#include <stdio.h>
#include "asm.h"

// auxiliary function to check if is multiple
int is_Multiple(int n1, int n2)
{
    return n1 % n2 == 0; // wll return 1 if multiple
}

// main function
int sum_multiples_x(char *vec, int x)
{
    int i=0;
    int sum = 0;
    int multiple = (x >> (8*1)) & 0xff; // gets the value @ the second byte

	for (i = 0; *(vec + i) != 0; i++)
	{       
        
        if (is_Multiple(*(vec + i), multiple))
		{
			sum += *(vec + i);
		}
	}
	
    return (sum); // return value
}
