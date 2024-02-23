#include <stdio.h>
#include "asm.h"

int main(void)
{
	char a_string[] = "String";
	char b_string[] = "String";
	char *a = a_string;
	char *b = b_string;
	
	int output = test_equal(a, b);

	printf("The output is %d\n", output);

	return 0;
}
