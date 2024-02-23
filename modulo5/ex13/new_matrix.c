#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int **new_matrix(int lines, int columns)
{
    int i, **new_matrix;

    new_matrix = (int **)calloc(lines, sizeof(int *));              

    for (i = 0; i < lines; i++)
    {
        *(new_matrix + i) = (int *)calloc(columns, sizeof(int));
        if (new_matrix[i] == NULL)
        {
            printf("Error reserving memory.\n"); exit(1);
        }
    }
    return new_matrix;
}
