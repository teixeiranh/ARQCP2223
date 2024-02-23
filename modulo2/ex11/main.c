/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

int op1 = 0, op2 = 0;

int main(void) {
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	
	char isFlag = test_flags();
	
	if (isFlag)
		printf("At least one flag was activated.\n");
	else
		printf("No flag was activated.\n");
		
	return 0;
}
