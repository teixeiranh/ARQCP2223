#include <stdio.h>
#include "asm.h"

// auxiliary function to print the list of bits
void bin(unsigned n)
{
	unsigned i;
	for (i = 1 << 31; i > 0; i = i / 2)
		(n & i) ? printf("1") : printf("0");
}

// main function
int main(void)
{
	int position = 0;
	int integer = -2;

	int *ptr = &integer;
	bin(*ptr);
	printf("\n");
	printf("%d \n", *ptr);

	int output = reset_bit(ptr, position);

	bin(*ptr);
	printf("\n");
	printf("%d \n", *ptr);

	printf("%d,%d \n",*ptr, output);

	return 0;
}

// void run_test(int x, int bitpos, int expected, int exp_res)
// void test_Zero()
// {
//     run_test(-1,0,-2,1);
// }
// void test_One()
// {
//     run_test(-2,0,-2,0);
// }
// void test_Four()
// {
//     run_test(0xffff,15,0x7fff,1);
// }
// void test_FourA()
// {
//     run_test(0x7fff,15,0x7fff,0);
// }
// void test_Thirty()
// {
//     run_test(0x7fffffff,30,0x3fffffff,1);
// }
// void test_ThirtyA()
// {
//     run_test(0x3fffffff,30,0x3fffffff,0);
// }
