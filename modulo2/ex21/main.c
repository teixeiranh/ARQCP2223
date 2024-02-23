/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

short code = 0, currentSalary = 0;

int main(void) {
	//printf("Employee code:");
	//scanf("%hd",&code);
	//printf("Employee current salary:");
	//scanf("%hd",&currentSalary);
	
	int output = 0;
	output = new_salary();
	
	printf("The employee new salary is: %d €\n", output);
		
	return 0;
}
