#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num=5;


int main(void)
{	
	int vec[]={10,20,10,40,30};

	ptrvec=vec;

	int result=count_max();

	printf("The number of ocurrences is %d\n",result);
	
	return 0;
}
