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

    int res;
    res = find_matrix(resultMatrix, 2, 2, 3);

    printf("Was the value 3 found? %d\n", res);

    res = find_matrix(resultMatrix, 2, 2, 4);

    printf("Was the value 4 found? %d\n", res);

    free(resultMatrix);

    return 0;
}
