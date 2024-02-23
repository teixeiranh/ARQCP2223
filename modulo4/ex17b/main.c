#include <stdio.h>
#include "greater_date.h"

int main(void)
{
	unsigned int date1 = (256 << 8) | (1<< 24 ) | 1 ;
	unsigned int date2 = (255 << 8) | (31 << 24 ) | 12 ;
	
	unsigned int output = greater_date(date1, date2);
	
	printf("Output = %u : 0x%x\n", output, output);

	return 0;
}
