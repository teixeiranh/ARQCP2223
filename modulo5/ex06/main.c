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
	int grades_of_student[5] = {6,7,8,9,10};
	Student *ptr = &s; // pointer to student

	// for loop to print all the notes
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n", s.grades[i] = grades_of_student[i]);
	}

	int minimum = 8;
	int greater_grades[5]= {0,0,0,0,0};

	int num_greater = locate_greater(ptr, minimum, greater_grades); // function developed in assembly

	printf("-------\n");

	// for loop to print all the notes
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n", greater_grades[i]);
	}

	printf("\n%d greater grades found!\n", num_greater);

	return 0;
}
