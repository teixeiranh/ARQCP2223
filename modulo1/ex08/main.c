#include <stdio.h>
#include "array_sort2.h"


int main() {
	
	int vec[] = {9,8,5,6,7,3,4,2,0,1};
	int len = 10;
	int i;
	
	array_sort2(vec, len);
	
	for (i = 0; i < len; i++)
	{
		printf("%d ", *(vec + i));
	}
	
	return 0;
}
