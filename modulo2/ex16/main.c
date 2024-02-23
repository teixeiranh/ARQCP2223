#include <stdio.h>
#include "asm.h"

int num;

// main function
int main(void)
{
	printf("Num: ");
	scanf("%d", &num);
	int output = steps(); // function
	printf("Output: %d\n", output);	
	
	return 0;
}
