#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{
	//int num = -1;
	int number_of_bits=count_bits_one(0xffff);

	printf("Number of 1s: %d\n", number_of_bits);

	return 0;
}

// void test_None()
// { 
//     run_test(-1,32); 
// }
// void test_One()
// { 
//     run_test(-2,31); 
// }
// void test_All()
// { 
//     run_test(0,0); 
// }
// void test_Two()
// { 
//     run_test(-6,30); 
// }

// void test_Three()
// { 
//     run_test(3,2); 
// }
// void test_Sixteen()
// { 
//     run_test(0xffff,16); 
// }
// void test_SixteenA()
// { 
//     run_test(0xffff0000,16); 
// }
// void test_SixteenB()
// { 
//     run_test(0xf0f0f0f0,16); 
// }
// void test_SixteenC()
// { 
//     run_test(0x0f0f0f0f,16); 
// }

