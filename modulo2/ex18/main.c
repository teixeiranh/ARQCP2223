#include <stdio.h>
#include "asm.h"

int i = 1, n;

// main function
int main(void)
{
	printf("value of n is: "); // define the value of 0
	scanf("%d",&n);
	int finalResult = sum(); // test the somation
	printf("The final result is: %d\n", finalResult);
	
	return 0;
}
