/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

int A = 2147483647;
short B = 32767;
char C = 127, D = 127;

int main(void) {
	long C = sum_and_subtract();
	printf("sum_and_subtract = %ld:0x%lx\n", C, C);
	return 0;
}
