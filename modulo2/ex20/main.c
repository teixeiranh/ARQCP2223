#include <stdio.h>
#include "asm.h"

char num;

// main function
int main(void)
{
	printf("Num: ");
	scanf("%c", &num);
	int result = check_num(); // function
	printf("%d\n", result);

	if (result == 4)
	{
		printf("Even and negative! \n"); // even and negative
	}
	else if (result == 5)
	{
		printf("Odd and negative! \n"); // odd and negative
	}
	else if (result == 6)
	{
		printf("Even and positive! \n"); // even and positive
	}
	else if (result == 7)
	{
		printf("Odd and positive! \n"); // odd and positive
	}

	return 0;
}
