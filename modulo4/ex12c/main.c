#include <stdio.h>
#include "asm.h"
#include "count_bits_one.h"

// main function
int main(void)
{
	int num = 5;
	short array[] = {-1,-1,0,-1,-1};
	short *vec = array;

	// int num = -1;
	int number_of_bits = vec_count_bits_one(vec, num);

	printf("Number of 1s: %d\n", number_of_bits);

	return 0;
}

// void test_Zero()
// { 
//     run_test((short[]){},0,0); 
// }
// void test_One()
// { 
//     run_test((short[]){1},1,1); 
// }
// void test_OneA()
// { 
//     run_test((short[]){0},1,0); 
// }
// void test_MinusOne()
// { 
//     run_test((short[]){-1},1,16); 
// }
// void test_Three()
// { 
//     run_test((short[]){-1,-2,-4},3,45); 
// }
// void test_Five()
// { 
//     run_test((short[]){-1,-1,0,-1,-1},5,64); 
// }
