#include <stdio.h>
#include "asm.h"

char *ptr1;
char *ptr2;

int main(void)
{
	char porto_string[] = "String do Porto string";
	char output_string[32];
	
	ptr1 = porto_string;
	ptr2 = output_string;
	
	str_copy_porto();
	
	printf("Initial Porto string: %s\n", porto_string);
	printf("Copied Porto string: %s\n", output_string);
	
	return 0;
}
