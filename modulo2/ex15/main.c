/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

int A = 50000, B = -50, C = 6, D = 7;
int main(void) {
	
	int computed = compute();
	
	printf("Computed ((A*B)-C)/D = %d:0x%x\n", computed, computed);
		
	return 0;
}
