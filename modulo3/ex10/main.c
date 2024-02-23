#include <stdio.h>
#include "asm.h"

char vec1[] = "String 1";
char vec2[] = "String 2";
char vec3[20];
char *ptr1;
char *ptr2;
char *ptr3;

int main(void)
{	
	ptr1 = vec1;
	ptr2 = vec2;
	ptr3 = vec3; 
	
	int i = 0;
	printf("The first vector is: ");
	while(*(ptr1 + i) != '\0'){
		printf("%c", *(ptr1 + i));
		i++;
	}
	
	printf("\n");
	
	i = 0;
	printf("The second vector is: ");
	while(*(ptr2 + i) != '\0'){
		printf("%c", *(ptr2 + i));
		i++;
	}
	
	str_cat();
	
	printf("\n");
	
	i = 0;
	printf("The concatenated vector is: ");
	while(*(ptr3 + i) != '\0'){
		printf("%c", *(ptr3 + i));
		i++;
	}
	
	printf("\n");
	
	return 0;
}
