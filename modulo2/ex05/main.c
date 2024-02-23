#include <stdio.h>
#include "asm.h"

short int s = 0xAABB;

// main function
int main(void)
{
	printf("bytes before: "); // before
	printf("%#X \n", s);
	s = swapBytes(); // run function
	printf("bytes after: "); // after
	printf("%#X \n", s);
	return 0;
}
