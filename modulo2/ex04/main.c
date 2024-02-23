/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;
int main(void) {
	long res = 0;
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	printf("Valor op3:");
	scanf("%ld",&op3);
	printf("Valor op4:");
	scanf("%ld",&op4);
	res = sum_v3();
	printf("sum_v3 = %ld:0x%lx\n", res,res);
	return 0;
}
