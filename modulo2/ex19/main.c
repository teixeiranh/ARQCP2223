/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"

char current = 0, desired = 0;

int main(void) {
	printf("Value current temperature:");
	scanf("%hhd",&current);
	printf("Value desired temperature:");
	scanf("%hhd",&desired);
	
	int output = 0;
	output = needed_time();
	
	printf("Current temperature: %d\nDesired Temperature: %d\nTime taken: %d seconds.\n", current, desired, output);
		
	return 0;
}
