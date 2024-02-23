#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num;

int main(void)
{	
	int int_array[] = {1,0,-1};
	num = sizeof(int_array)/sizeof(int_array[0]);
	
	printf("%d", num);
	for (int i = 0; i < num; i++)
	{
		printf("Initial int array %d = %d\n", i, int_array[i]);
	}
	
	ptrvec = int_array;
	
	vec_add_two();

	for (int i = 0; i < num; i++)
	{
		printf("Added int array at position %d = %d\n", i, int_array[i]);
	}
	
	return 0;
}
