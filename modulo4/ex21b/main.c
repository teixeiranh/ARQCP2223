#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{

	char a[] = {"abcdz"};
	char b[] = {"abxdz"};

	char *ptr_a = a;
	char *ptr_b = b;

	int result = distance(ptr_a,ptr_b);

	printf("Distance is = %d\n", result);

	return 0;
}

// void run_test(char *p1, char*p2, int expected)
// {
//     int  res;

// 	res = call_func(distance,p1,p2);

//     TEST_ASSERT_EQUAL_INT(expected,res);

// }

// void test_Zero()
// {
//     run_test("","",0);
// }
// void test_One()
// {
//     run_test("1","1",0);
// }
// void test_OneA()
// {
//     run_test("1","",-1);
// }
// void test_OneB()
// {
//     run_test("","1",-1);
// }
// void test_Two()
// {
//     run_test("ab","ab",0);
// }
// void test_TwoA()
// {
//     run_test("a","ab",-1);
// }
// void test_TwoB()
// {
//     run_test("ab","a",-1);
// }
// void test_Five()
// {
//     run_test("abcde","abcde",0);
// }
// void test_FiveA()
// {
//     run_test("abcdz","abcde",1);
// }
// void test_FiveB()
// {
//     run_test("abcde","abxdz",2);
// }
// void test_FiveC()
// {
//     run_test("abcde","yaxbz",5);
// }