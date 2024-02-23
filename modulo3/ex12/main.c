#include <stdio.h>
#include "asm.h"

int vec[] = {1000,10000,20000};
int *ptrvec = vec;
int num = 3;

// main function
int main(void)
{
	unsigned char changed = vec_zero(); // run the function to the global vector "vec"

	// print all the values
	int i = 0;
	for (i = 0; i < num; i++)
	{
		printf("%d\n", *(ptrvec + i));
	}

	printf("(%d)\n", changed);

	return 0;
}
