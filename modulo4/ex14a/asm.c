#include <stdio.h>
#include "asm.h"

// main function
int reset_bit(int *ptr, int pos)
{
	int output = 0; // value for the output
	int previous_value = *ptr; // previous value to be compared next

	*ptr &= ~(1 << pos); // bitwise AND operator (&) to clear (set to 0) the bit @pos

	if (*ptr != previous_value)
	{
		output = 1;
	}

	return output;
}

