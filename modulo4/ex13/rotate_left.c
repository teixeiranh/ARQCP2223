#include "rotate.h"

int rotate_left(int num, int nbits)
{
	int i;
	i = num << nbits;      			
	int j;
	j = num >> (32 - nbits); 		
	int k;
	k = i | j;						
	return k;
}
