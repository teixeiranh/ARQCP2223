#include <stdio.h>
#include "asm.h"

int main(void)
{
	short w = 0;
	
	int output = call_incr(w);
	printf("The expected value is -55 for an input of 0\n");
	printf("The actual value is %d\n", output);

	return 0;
}
