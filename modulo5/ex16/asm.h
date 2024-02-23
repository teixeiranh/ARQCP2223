#ifndef ASM_H
#define ASM_H

typedef struct
{
    short n_students;
    unsigned short *individual_grades;
}group;

int approved_semester(group *g);

#endif