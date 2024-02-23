#include <stdio.h>
#include "mixed_sum.h"
#include "join_bits.h"

// main function
int main(void)
{
	int a=-1;
	int b=0;
	int pos=0;
	
	int result=mixed_sum(a, b, pos);
	
	printf("Final number after mixing = %d\n", result);
	
	return 0;
}

// void run_test(int x, int y, int z, int expected )

// void test_One()
// { 
//     run_test(0,-1,8,-1); 
// }
// void test_Two()
// { 
//     run_test(-1,-1,8,0xfffffffe); 
// }
// void test_Three()
// { 
//     run_test(0,1,0,1); 
// }
// void test_Four()
// { 
//     run_test(1,0,0,1); 
// }

// void test_Five()
// { 
//     run_test(-1,15,31,0xe); 
// }

// void test_Six()
// { 
//     run_test(15,-1,31,0xe); 
// }

// void test_Seven()
// { 
//     run_test(-1,1,15,0); 
// }

// void test_Eight()
// { 
//     run_test(1,-1,15,0); 
// }
