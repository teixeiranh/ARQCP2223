#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int main(void)
{	
	int i, lines = 5, columns =2;
	
	int **matrix;
	
	matrix = new_matrix(lines, columns);
	
	printf("matrix address : %p\n", matrix);

	return 0;
}
