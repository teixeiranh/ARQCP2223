#include <stdio.h>
#include "asm.h"

char grades[] = {1,1,2,2,6,6,12,12,20,20};
int num = sizeof(grades);
char *ptrgrades;

int freq[21]; 
int *ptrfreq;

int main(void)
{	
	ptrgrades = grades;
	ptrfreq = freq;
	
	for (int i = 0; i < num; i++)
	{	
		printf("Student exam grade at position %d is %d\n", i, (int)*(ptrgrades + i));
	}
	
	frequencies();
	
	for (int i = 0; i < sizeof(freq)/sizeof(freq[0]); i++)
	{
		printf("Freq. of grade at position %d is %d\n", i, *(ptrfreq + i));
	}
	
	return 0;
}
