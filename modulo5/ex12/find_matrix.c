#include "main.h"
#include <stdlib.h>
#include <stdio.h>

// function to create new matrix dinamically
int **new_matrix(int lines, int columns)
{

    int **new_matrix;

    new_matrix = (int **)calloc(lines, sizeof(int *));              // array de int* com tamanho lines

    int i;
    for (i = 0; i < lines; i++)
    {
        *(new_matrix + i) = (int *)calloc(columns, sizeof(int));
        if (new_matrix[i] == NULL)
        {
            printf("Error reserving memory.\n");
            exit(1);
        }
    }

    return new_matrix;
}


// function to traverse the matrix created dinamically and find the value in the 4th argument "num"
int find_matrix(int **m, int y, int k, int num)
{
    int i = 0;
    int j = 0;

    for (i = 0; i < y; i++)
    {
        for (j = 0; j < k; j++)
        {
            if ((*(*(m + i) + j)) == num)
            {
                return 1;
            }
        }
    }

    return 0;
}