#ifndef ASM_H
#define ASM_H

typedef struct
{
    int y;
    short x;
} structA;

typedef struct
{
    structA a;
    structA *b;
    int x;
    short z;
    char c;
    int y;
    char e[3];
} structB;

short fun2(structB *s);

#endif
