#include <stdio.h>
#include "asm.h"

int main(void)
{

	s2 var;
	int vj=1;
	char vc[3]={'a','a','a'};
	short vw[3]={1,2,3};
	s2 *ptr=&var;

	fill_s2(ptr,vw,vj,vc);

	printf("\n------------------------------------------------------------------\n");

	printf("\n value of vj is %d\n",ptr->j);

	printf("\n values of w are %s\n",ptr->c);
	
	printf("\n------------------------------------------------------------------\n");

	for (int i = 0; i < 3; i++)
	{
		printf("\n values of w are %d\n",ptr->w[i]);
	}

	return 0;
}
