#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{
	int val1 = 1;
	int val2 = 2;
	int val3 = 3;
	int val4 = 4;

	int result = greatest(val1, val2, val3, val4);

	printf("The result is %d\n", result);

	return 0;
}
