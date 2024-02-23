#include <stdio.h>
#include "asm.h"

char vector[] = "7ee789";
char *ptr1 = vector;

// main function
int main(void)
{
	int number_of_seven = seven_count();
	printf("Number of times that 7 was found: %d\n", number_of_seven);

	return 0;
}
