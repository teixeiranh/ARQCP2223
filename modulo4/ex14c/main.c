#include <stdio.h>
#include "reset_2bits.h"
#include "reset_bit.h"

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
	int integer = 0xffffffff;
	int position = 4;

	int *ptr = &integer;
	bin(*ptr);
	printf("\n");
	printf("%d \n", *ptr);
	printf("%x \n", *ptr);

	printf("\n");
	reset_2bits(ptr, position);

	bin(*ptr);
	printf("\n");
	printf("%d \n", *ptr);
	printf("%x \n", *ptr);

	//	printf("%d,%d \n",*ptr, output);

	return 0;
}

// void run_test(int x, int bitpos, int expected )
// void test_Zero()
// {
//     run_test(-1,0,0x7ffffffe);
// }
// void test_One()
// {
//     run_test(0x7ffffffe,0,0x7ffffffe);
// }
// void test_Four()
// {
//     run_test(0xffffffff,4,0xf7ffffef);
// }
// void test_Eight()
// {
//     run_test(0xffffffff,8,0xff7ffeff);
// }
// void test_Twelve()
// {
//     run_test(0xffffffff,12,0xfff7efff);
// }
