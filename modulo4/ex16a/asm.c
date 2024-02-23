#include <stdio.h>
#include "asm.h"

// main function
int join_bits(int a, int b, int pos)
{

	int output;
	int i;
	int mask_a = 1;

	for (i = 0; i < pos; i++) // construction of the mask taking into account the position "bpos+1*apos"
	{
		mask_a = mask_a << 1;
		mask_a = mask_a + 1;
	}

	a &= mask_a; // and operator to get the bit to multiply for the argument a

	int mask_b = 0xffffffff ^ mask_a; // get the active bits of mask_a

	b &= mask_b; // and operator to get the mask of b

	output = a | b; // after the numbers have been cleared by the masks, intersect them with OR

	return (output); // return value
}
