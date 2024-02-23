#include <stdio.h>
#include "asm.h"

// short int s = 0xCCDD;
char byte1 = 0xaa;
char byte2 = 0xbb;

// main function
int main(void)
{
	// swapBytes
	// printf("bytes before: ");
	// printf("%#X \n", s);
	// s = swapBytes();
	// printf("bytes after: ");
	// printf("%#X \n", s);

	// concatBytes
	printf("0x%hx \n", byte1);
	printf("0x%hx \n", byte2);
	short int t = concatBytes();
	printf("0x%hx \n", t);
	return 0;
}
