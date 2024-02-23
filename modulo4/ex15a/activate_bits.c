#include "activate.h"

int activate_bits(int a, int left, int right)
{
	int mask = 0;
	int counter = 0;
	
	while (counter < 32) 
	{
		mask = mask << 1;
		if (counter < right || counter > left) 
		{
			mask++;
		}
		counter++;
	}
						
	return mask | a;
}
