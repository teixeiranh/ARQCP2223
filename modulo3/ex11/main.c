#include <stdio.h>
#include "asm.h"

int vec[] = {1,10,-1};
int num = 3;
int *ptrvec;

int main(void)
{	
	for (int i = 0; i < num; i++)
	{
		printf("Initial array at position %d: %d\n", i, vec[i]);
	}
	
	ptrvec = vec;
	
	printf("Number of elements greater than 10: %d\n", vec_greater10());
	
	return 0;
}
