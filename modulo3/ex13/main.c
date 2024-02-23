#include <stdio.h>
#include "asm.h"

short vec[] = {1,10,-1};
unsigned short num = 3;
short *ptrvec;

int main(void)
{	
	ptrvec = vec;
	
	for (int i = 0; i < num; i++)
	{
		printf("Initial array at position %d: %hi\n", i, *(ptrvec + i));
	}
	
	keep_positives();
	
	for (int i = 0; i < num; i++)
	{
		printf("Final array at position %d: %hi\n", i, *(ptrvec + i));
	}
	
	return 0;
}
