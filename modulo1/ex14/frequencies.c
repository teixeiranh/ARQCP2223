#include <stdio.h>

/*
    Function that finds the frequency of grades for a given list of grades.
*/
void frequencies(float *grades, int n, int *freq)
{
    int i;

    for (i = 0; i < n; i++)
    {
        // float number = *(grades + i); // cast to avoid warning
        int integerPart = (int)*(grades + i);

        *(freq + integerPart) = *(freq + integerPart) + 1;
    }
}