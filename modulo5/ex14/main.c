#include <stdio.h>
#include <stdlib.h>
#include "main.h"

int main(void)
{
    int lines = 2;
    int columns = 2;

    int **resultMatrix;

    resultMatrix = new_matrix(lines, columns);

    printf("resultMatrix: %p\n", resultMatrix);

    *(*(resultMatrix + 0) + 0) = 2;
    *(*(resultMatrix + 0) + 1) = 2;
    *(*(resultMatrix + 1) + 0) = 2;
    *(*(resultMatrix + 1) + 1) = 3;

    int **sum_matrix;
    sum_matrix = add_matrixes(resultMatrix, resultMatrix, 2, 2);

    int k;
    int j;
    for (k = 0; k < lines; k++)
    {
        for (j = 0; j < columns; j++)
        {
            printf("%d ", sum_matrix[k][j]);
        }
        printf("\n");
    }

    printf("sum_matrix: %p\n", sum_matrix);

    free(sum_matrix);
    free(resultMatrix);

    return 0;
}
