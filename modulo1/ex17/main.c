#include <stdio.h>
#include "swap.h"

int main() {
	
	int vec1[] = {1,2,3,4,5};
	int vec2[] = {6,7,8,9,0};
	int size = sizeof(vec1)/sizeof(int);
	
	swap(vec1, vec2, size);
	
	int i;
	
	for (i = 0; i < size; i++) 
	{
		printf("vec1: %d\n", *(vec1 + i));
	}
	printf("\n");
	for (i = 0; i < size; i++) 
	{
		printf("vec2: %d\n", *(vec2 + i));
	}
	
	return 0;
}
