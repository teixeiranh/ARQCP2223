#include <stdio.h>
#include "asm.h"

long long_vec[] = {10,10,10,10,10};
long *ptrvec=long_vec;
short num;

// main function
int main(void)
{

	num = 5;

	long result_Sum = vec_sum();
	printf("Sum=%ld\n", result_Sum);

	long result_Average=vec_avg();
	printf("Average=%ld\n",result_Average);

	return 0;
}
