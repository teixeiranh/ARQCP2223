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

// function to create new matrix dinamically, adding both matrices from 1st and 2nd parameter
int **add_matrixes(int **a, int **b, int y, int k)
{
    int i;
    int j;
    int **result_matrix;

    result_matrix = (int **)calloc(y, sizeof(int *)); // array de int* com tamanho lines

    for (i = 0; i < y; i++)
    {
        *(result_matrix + i) = (int *)calloc(k, sizeof(int));
        if (result_matrix[i] == NULL)
        {
            printf("Error reserving memory.\n");
            exit(1);
        }
    }

    i = 0;
    j = 0;

    for (i = 0; i < y; i++)
    {
        for (j = 0; j < k; j++)
        {
            // result_matrix[i][j]  =   a[i][j] +   b[i][j]
            (*(*(result_matrix + i) + j)) = (*(*(a + i) + j)) + (*(*(b + i) + j));
        }
    }

    return result_matrix;
}
