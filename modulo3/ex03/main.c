#include <stdio.h>
#include "asm.h"

char *ptr1;
char *ptr2;

// main function
int main(void)
{
	//	char porto_string[] = "String do POrto string";
	char porto_string[] = "oPOrto";
	char output_string[32];

	ptr1 = porto_string;
	ptr2 = output_string;

	str_copy_porto2();

	printf("Initial Porto string: %s\n", porto_string);
	printf("Copied Porto string: %s\n", output_string);

	return 0;
}
