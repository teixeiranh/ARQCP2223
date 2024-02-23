#include <stdio.h>
#include "asm.h"

int main(void)
{
	s1 var;
	char vc = 'a';
	int vi = 1;
	char vd = 'b';
	int vj = 2;
	s1 *ptr=&var;

	fill_s1(ptr, vi, vc, vj, vd);
	
	printf("\nValue of vc is %d\n",ptr->c);
	printf("Value of vi is %d\n",ptr->i);
	printf("Value of vd is %d\n",ptr->d);
	printf("Value of vj is %d\n",ptr->j);

	return 0;
}
