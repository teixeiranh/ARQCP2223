#include <stdio.h>
#include "new_matrix.h"
#include "count_odd_matrix.h"

int main(void)
{	
	int y = 2, k =2;
	
	int **m;
	
	m = new_matrix(y, k);
	
	*(*(m + 0) + 0) = 2;
    *(*(m + 0) + 1) = 3;
    *(*(m + 1) + 0) = 3;
    *(*(m + 1) + 1) = 3;
    
    int output = count_odd_matrix(m, y, k);
    
	printf("Number of odd elements in m = %d\n", output);
	
	return 0;
}
