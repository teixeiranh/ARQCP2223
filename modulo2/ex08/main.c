#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{

	short result=crossSumBytes(); // function
	printf("%hx\n",result);
	return 0;
}
