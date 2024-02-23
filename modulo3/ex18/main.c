#include <stdio.h>
#include "sort_without_reps.h"
#include "sort_array.h"
#include "existing_value.h"

short *ptrsrc;
short *ptrdest;
int num=6;

int main(void)
{	
	
	short src[] = {12, 13, 1, 4, 8, 8};
	short dest[6] = {};
	int i;
	
	ptrsrc = src;
	ptrdest = dest;

	int num_elements = sort_without_reps();

	for(i = 0; i < num; i++){
		printf("%d ", src[i]);
	}
	printf("\n");

	// sort_array();

	// for(i = 0; i < num; i++){
	// 	printf("%d ", src[i]);
	// }
	// printf("\n");

	// printf("\n%d\n",exists);

	
	for(i = 0; i < num; i++){
		printf("%d ", dest[i]);
	}
	printf("\n");
	printf("Number of elements allocated: %d\n", num_elements);
	
	return 0;
}
