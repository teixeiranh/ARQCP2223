#include <stdio.h>
#include "add_byte.h"

int main(void)
{
	char x = 10;
	int vec_1[] = {5,1,2,3,4,5};		// first position represents the size of the array
	int vec_2[] = {0,0,0,0,0,0};		
	int *vec1 = vec_1;
	int *vec2 = vec_2;
	
	printf("Before add byte:\n");
	for (int i = 1; i < vec_1[0]; i++) {
		printf("Position %d: %d\n", i, *(vec1 + i));
	}
	
	add_byte(x, vec1, vec2);
	
	printf("\nAfter add byte:\n");
	for (int i = 1; i < vec_1[0]; i++) {
		printf("Position %d: %d\n", i, *(vec2 + i));
	}

	return 0;
}
