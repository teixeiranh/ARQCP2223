#include <stdio.h>
#include "test_even.h"
#include "vec_sum_even.h"

long even = 12;
long vec[] = {1,0,-1};
int num = 3;
long *ptrvec;
long output; 

int main(void)
{	
	
	printf("Is the number even? %ld\n", test_even());
	
	for (int i = 0; i < num; i++)
	{
		printf("Initial array position %d: %ld\n", i, vec[i]);
	}
	
	ptrvec = vec;
	
	printf("Sum of even numbers = %ld\n", vec_sum_even()); 		
	
	return 0;
}
