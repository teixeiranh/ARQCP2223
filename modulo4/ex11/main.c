#include <stdio.h>
#include "asm.h"

int main(void)
{
	int output = call_proc(33,9998,5311,100);
	printf("Output = %d\n", output);

	return 0;
}
