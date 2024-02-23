#include <stdio.h>
#include "where_is.h"


int main() {
	
	char str[] = "exercicio13domodulo1";
	int j;
	int p[2];
	
	int pLen = where_is(str, 'i', p);
	
	for (j = 0; j < pLen; j++) 
	{
		printf("Position: %d\n", *(p + j));
	}
	
	return 0;
}
