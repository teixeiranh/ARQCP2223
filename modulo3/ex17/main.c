#include <stdio.h>
#include "asm.h"

short vec[] = {-1, -3, -2, 1, 2, 3, 0};
int num = sizeof(vec)/sizeof(vec[0]);
short *ptrvec;

int main(void)
{	
	ptrvec = vec;
	
	for (int i = 0; i < num; i++)
	{
		printf("Initial array at position %d: %hi\n", i, *(ptrvec + i));
	}
	
	array_sort();
	
	for (int i = 0; i < num; i++)
	{
		printf("Sorted array at position %d: %hi\n", i, *(ptrvec + i));
	}
	
	return 0;
}
