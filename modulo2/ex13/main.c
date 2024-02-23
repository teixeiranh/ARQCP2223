/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

int length1 = 0, length2 = 0, height = 0;

int main(void) {
	printf("Valor length1:");
	scanf("%d",&length1);
	printf("Valor length2:");
	scanf("%d",&length2);
	printf("Valor height:");
	scanf("%d",&height);
	
	int area = getArea();
	
	printf("Area is of: %d:0x%x\n", area, area);
	
		
	return 0;
}
