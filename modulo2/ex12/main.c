#include <stdio.h>
#include "asm.h"

int A,B;

// main function
int main(void)
{
	printf("Numerador: ");
	scanf("%d",&A);	
	printf("Denumerador: ");
	scanf("%d",&B);

	int res=isMultiple(); // function

	if (res==1)
	{
		printf("É múltiplo'! \n");
	}
	else
	{
		printf("Não é múltiplo! \n");
	}
	
	return 0;
}
