#include <stdio.h>
#include "odd_sum.h"


int main() {
	
	int vec[] = {7,1,3,4,6,5,1};
	
	int oddSum = odd_sum(vec);
	
	printf("%d\n", oddSum);
	
	
	return 0;
}
