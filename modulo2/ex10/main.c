#include <stdio.h>
#include "asm.h"

int op1=10;
int op2=10;
int op3=10;

// main function
int main(void)
{
	long long result=sum3ints(); // function
	printf("%lld\n",result);
	return 0;
}
