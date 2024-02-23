#include "main.h"
#include <string.h>

// function to save the age, number, name and adress of a student in the fields of a structure
void fill_student(Student *s, char age, short number, char *name, char *address)
{
    (*s).age = age;
    (*s).number = number;
    strcpy((*s).name, name);
    strcpy((*s).address, address);
}