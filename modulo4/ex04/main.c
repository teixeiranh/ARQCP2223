#include <stdio.h>
#include "asm.h"

int main(void)
{
	int smaller_num;
	int *smaller = &smaller_num;
	
	int output = sum_smaller(2, 3, smaller);

	printf("The sum is %d and the smaller of the two numbers is %d\n", output, *smaller);

	return 0;
}
