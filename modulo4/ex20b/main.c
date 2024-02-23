#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{

	char array[] = {3,5,11,12,7,4,0};
	char *vec = array;
	int x=0xf0301;

	int sum= sum_multiples_x(vec,x);
	printf("Sum is = %d\n", sum);

	return 0;
}

// void run_test(char  *p, int num, int expected)
// {
//     int  res;

// 	res = call_func(sum_multiples_x,p,num);

//     TEST_ASSERT_EQUAL_INT(expected,res);

// }

// void test_Zero()
// {
//     run_test((char[]){0},0,0);
// }
// void test_One()
// {
//     run_test((char[]){1,0},0x100,1);
// }
// void test_OneA()
// {
//     run_test((char[]){1,1,0},0x100,2);
// }
// void test_OneB()
// {
//     run_test((char[]){3,5,11,12,7,4,0},0xf0301,15);
// }
// void test_Three()
// {
//     run_test((char[]){1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,0},0xfff0500,30);
// }
// void test_ThreeB()
// {
//     run_test((char[]){1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,0},0x400,40);
// }
