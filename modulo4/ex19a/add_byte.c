#include "add_byte.h"

void add_byte(char x, int *vec1, int *vec2)
{
	//first position from vec1 to vec2
	*vec2 = *vec1;		
				
	//using first position of vec1 as the vec size to iterate over positions
	for (int i = 1; i <= *vec1; i++)
	{
		// current position
		int current = *(vec1 + i);
		
		// masking for first byte
		int firstbyte = current & 0x000000FF;
		
		// adding char x to first byte
		char addedbyte = x + firstbyte;
		
		// masking for the other three bytes of the int
		int remainingbytes = current & 0xFFFFFF00;
		
		// allocating the sum of the three bytes with the added first byte
		// to the current memory position of vec2
		*(vec2 + i) = remainingbytes + addedbyte;
	}
}
