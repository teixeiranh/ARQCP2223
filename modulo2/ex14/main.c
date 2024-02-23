#include <stdio.h>
#include "asm.h"

// main function
int main(void)
{

	printf("length1: ");
	scanf("%d", &length1);
	printf("length2: ");
	scanf("%d", &length2);
	printf("height: ");
	scanf("%d", &height);

	int area = getArea(); // function
	
	printf("Trapeze area is: %d ", area);
	
	return 0;
}
