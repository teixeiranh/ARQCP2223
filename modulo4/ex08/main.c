#include <stdio.h>
#include "asm.h"

int main(void)
{
	int a = 4;
	int b_int = 1;
	int *b = &b_int;
	int c = 1;
	
	int output = calc(a, b, c);

	printf("The output is %d\n", output);

	return 0;
}
