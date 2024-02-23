#include <stdio.h>
#include "asm.h"

int num = 1;

char vector1[] = {1};
char vector2[] = {2};

char *ptr1 = vector1;
char *ptr2 = vector2;

// main function
int main(void)
{

	int i=0;
	
	// print ptr1
	for (i = 0; i < num; i++)
	{
		printf("%d", *(ptr1 + i));
	}

	printf("\n");

		// print ptr1
	for (i = 0; i < num; i++)
	{
		printf("%d", *(ptr2 + i));
	}

	// swap both arrays
	swap();

	printf("\n");

	// print ptr1
	for (i = 0; i < num; i++)
	{
		printf("%d", *(ptr1 + i));
	}

	printf("\n");
	
	// print ptr2
	for (i = 0; i < num; i++)
	{
		printf("%d", *(ptr2 + i));
	}
	
	return 0;
}
