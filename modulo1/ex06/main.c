#include <stdio.h>
#include "power_ref.h"


int main() {
	
	int x = 5;
	
	unsigned int y = 2;
	
	power_ref(&x, y);
	
	printf("The power of x^y is: %d\n", x);
	
	return 0;
}
