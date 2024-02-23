#include <stdio.h>
#include "asm.h"

char string[] = "a particular string";
char *ptr1;
int output = 0;

int main(void)
{	
	printf("Initial string: %s\n", string);
	
	ptr1 = string;
	
	output = encrypt();
	
	printf("Encrypted string: %s\n", string);
	printf("Number of encrypted characters: %d\n", output); //25		
	
	return 0;
}
