#include <stdio.h>
#include "activate.h"

int main(void)
{
	int output = activate_bits(1, 0, 1);
	
	printf("Output = %d : 0x%x\n", output, output);

	return 0;
}
