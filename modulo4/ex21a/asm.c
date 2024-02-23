#include <stdio.h>
#include "asm.h"

int distance(char *a, char *b)
{
	int output = 0;
	int lenght_a = 0;
	int lenght_b = 0;
	int i = 0;

	for (i = 0; *(a + i) != '\0'; i++)
	{
		lenght_a += 1;
	}

	for (i = 0; *(b + i) != '\0'; i++)
	{
		lenght_b += 1;
	}

	if (lenght_a != lenght_b)
	{
		return -1;
	}

	for (i = 0; *(a + i) != '\0'; i++)
	{
		if (*(a + i)!=*(b + i))
		{
			output+=1;
		}
		
	}
	
	return output; // return value
}
