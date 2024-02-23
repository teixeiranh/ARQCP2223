#include <stdio.h>
#include "asm.h"

int num;
short x;
short *ptrvec;

// main function
int main(void)
{
	x=-3; // test value
	short array_Of_Shorts[]={-1,-1,-1,-3};
	ptrvec=array_Of_Shorts;
	
	num=4; // number of elements
	short *location=vec_search(); // function will have the location of the the first value found

	printf("The reference is: %p\n", location);

	return 0;
}
