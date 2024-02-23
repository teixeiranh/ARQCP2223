#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void)
{

	Student s;
	// student atributes assignment
	s.age = 32;
	s.number = 8;
	strcpy(s.name, "Nuno");
	strcpy(s.address, "Braga");
	int grades[5]={10,10,10,10,10};

	Student *ptr = &s; // pointer to student

	update_grades(ptr, grades); // function developed in assembly

	// for loop to print all the notes
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n", ptr->grades[i]);
	}

	printf("\n");

	return 0;
}
