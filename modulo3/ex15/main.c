#include <stdio.h>
#include "asm.h"

long vec[] = {-1,255,-1};
int num = 3;
long *ptrvec;

int main(void)
{	
	ptrvec = vec;
	
	for (int i = 0; i < num; i++)
	{
		printf("Initial array at position %d: %ld\n", i, *(ptrvec + i));
	}
	
	printf("The sum of the first byte of every element is: %d\n", sum_first_byte());
	
	return 0;
}
