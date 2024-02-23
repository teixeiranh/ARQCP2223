/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

int userChoice = 0, A = 4, B = 2;

int main(void) {
	printf("Value of A:");
	scanf("%d", &A);
	printf("Value of B:");
	scanf("%d", &B);
	printf("(1)sum\n(2)subtraction\n(3)multiplication\n(4)division\n(5)modulus\n(6)power2\n(7)power3\nChoose function:\n");
	scanf("%d", &userChoice);
	
	if (userChoice == 1) {
		printf("You chose sum.\n");
	result = sum();
	}
	if (userChoice == 2) {
		printf("You chose subtraction.\n");
		result = subtraction();
	}
	if (userChoice == 3) {
		printf("You chose multiplication.\n");
		result = multiplication();
	}
	if (userChoice == 4) {
		printf("You chose division.\n");
		result = division();
	}	
	if (userChoice == 5) {
		printf("You chose modulus.\n");
		result = modulus();
	}	
	if (userChoice == 6) { 
		printf("You chose power of two.\n");
		result = power2();
	}
	if (userChoice == 7) { 
		printf("You chose power of three.\n");
		result = power3();
	}
		
	printf("The result is: %d:0x%x\n", result, result);
		
	return 0;
}
