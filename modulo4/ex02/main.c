#include <stdio.h>
#include "asm.h"

int main(void)
{
	long result=sum_n2(122);

	printf("The result is %ld\n", result);

	return 0;
}
