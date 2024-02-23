#include <stdio.h>
#include "asm1.h"
#include "asm.h"

int vec[] = {1, 0, 1};
int *ptrvec = vec;
int x = 1;
int num = 3;

// main function
int main(void)
{

	int result = exists();
	int result2 = vec_diff();

	if (result == 1)
	{
		printf("\nDuplicates!\n");
	}
	else
	{
		printf("\nNo duplicates!\n");
	}

	printf("\nUnique numbers: %d\n", result2);

	return 0;
}
