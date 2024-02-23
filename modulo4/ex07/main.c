#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{
	char array[] = {1};
	char *vec=array;
	int n = 1;
	int result = count_odd(vec, n);
	printf("The number of odd elements are: %d \n", result);

	return 0;
}
