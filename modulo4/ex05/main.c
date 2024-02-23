#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{
	int value1 = 10;
	int v2 = 5;
	int *v1 = &value1;
	int result;

	printf("The first value of v1 is %d and v2 is %d! \n", value1,v2);

	result=inc_and_square(v1,v2);

	printf("The final value of v1 is %d and v2 is %d! \n", value1,result);

	return 0;
}
