#include <stdio.h>

void swap(int* vec1, int* vec2, int size)
{
	int i;
	int temp;
	
	for (i = 0; i < size; i++) 
	{
		temp = *(vec1 + i);
		*(vec1 + i) = *(vec2 + i);
		*(vec2 + i) = temp;
	}
}


