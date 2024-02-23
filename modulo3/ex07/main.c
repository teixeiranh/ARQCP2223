#include <stdio.h>
#include "asm.h"

char *ptr1;

// main function
int main(void)
{
	int number;
	char string[] = "aeea"; // string previously decrypted
	ptr1 = string;

	printf("Encrypted string: %s\n",string);
	number=decrypt(); // function that return the number of characters changed and 
	printf("Decrypted string: %s\n",string);
	printf("Number of different characters : %d\n",number);

	return 0;
}
