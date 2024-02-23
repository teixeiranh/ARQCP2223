#include <stdio.h>

void power_ref(int* x, int y) {
	
	int flag = 1; 
	int* flagPtr = &flag;
	
	if (y == 0) 
		*x = 1;
	else if (y < 0)
		*x = 0;
		
	else {
		
		while (y != 0)
		{
			*flagPtr *= *x;
			y--;
		}
		
		*x = *flagPtr;
	}
}
	
