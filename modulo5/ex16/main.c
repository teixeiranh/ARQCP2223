#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

char *toBinary(short n)
{
    char *binary = (char *)malloc(sizeof(char) * 16);
    int k = 0;
    for (unsigned i = (1 << 16 - 1); i > 0; i = i / 2)
    {
        binary[k++] = (n & i) ? '1' : '0';
    }
    binary[k] = '\0';
    return binary;
}

// main function
int main(void)
{

    short i = 0;
    short number_of_students = 2;
    unsigned short *individual_grades = (unsigned short *)malloc(number_of_students * sizeof(short));

    unsigned short grades_obtained[] = {0x7777, 0x6666};

    // assign the studenst grades to the dinamically defined array
    for (i = 0; i < number_of_students; i++) {
        *(individual_grades + i) = grades_obtained[i];
    }

    group turma;
    group *g = &turma;

    turma.n_students = number_of_students;
    turma.individual_grades = individual_grades;

    printf("\nNumber of students: %d\n", g->n_students);
    for (i = 0; i < number_of_students; i++)
    {
        char *binary_representation = toBinary(g->individual_grades[i]);
        printf("\nThe grades for student %d are: %s", i + 1, binary_representation);
        free(binary_representation);
    }

    int result = approved_semester(g);
    printf("\nNumber of approved students: %d\n", result);

    free(individual_grades);

    return 0;
}
