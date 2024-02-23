#include <stdio.h>
#include "asm.h"

// main function
int count_bits_one(int x)
{
	int count;
	int v = x;
	// subtracting 1 from a decimal flips all the bits after the rightmost set bit,
	// including the rightmost set bit. Example: 10 is 00001010 where 9 is 00001001.
	// Subtracting a number by 1 and do a bitwise & with itself (n & (n-1)) will unset
	// the RIGHTMOST SET BIT (setting it to 0).
	// This loop will iterate for each set bit @v.
	for (count = 0; v != 0; count++, v = v & (v - 1));
	return count;
}
