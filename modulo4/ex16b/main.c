#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{
	int a=-1;
	int b=0;
	int pos=0;
	
	int result=join_bits(a, b, pos);
	
	printf("Final number after joining = %d\n", result);
	
	return 0;
}

// void run_test(int x, int y, int z, int expected )
// void test_One()
// { 
//     run_test(0,-1,8,0xfffffe00); 
// }
// void test_Two()
// { 
//     run_test(-1,0,8,0x1ff); 
// }
// void test_Three()
// { 
//     run_test(0,-1,0,0xfffffffe); 
// }
// void test_Four()
// { 
//     run_test(-1,0,0,1); 
// }

// void test_Five()
// { 
//     run_test(0,-1,31,0); 
// }

// void test_Six()
// { 
//     run_test(-1,0,31,0xffffffff); 
// }

// void test_Seven()
// { 
//     run_test(0,-1,15,0xffff0000); 
// }

// void test_Eight()
// { 
//     run_test(-1,0,15,0xffff); 
// }