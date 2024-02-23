#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "asm.h"

structA **zxc_new_matrix(int lines, int columns)

{
    // reserve space for the lines
    structA **m = malloc(lines * sizeof(structA *));

    int i;
    // reserve space for the columns
    for (i = 0; i < lines; i++)
        m[i] = malloc(columns * sizeof(structA));
    return m;
}

// main function
int main(void)
{

    structA **struct_matrix;

    struct_matrix = zxc_new_matrix(2, 2);

    unionB test_union_one;
    test_union_one.b = 5;

    unionB test_union_two;
    test_union_two.b = 10;

    structA test_struc_one;
    test_struc_one.ub = test_union_one;

    structA test_struc_two;
    test_struc_two.ub = test_union_two;

    *(*(struct_matrix + 0) + 0) = test_struc_one;
    *(*(struct_matrix + 0) + 1) = test_struc_one;
    *(*(struct_matrix + 1) + 0) = test_struc_one;
    *(*(struct_matrix + 1) + 1) = test_struc_two;

    char result1 = return_unionB_b(struct_matrix, 0, 0);
    char result2 = return_unionB_b(struct_matrix, 1, 1);

    printf("\nresult is %d\n", result1);

    printf("\nresult is %d\n", result2);

    int i;
    // free the lines
    for (i = 0; i < 2; i++)
    {
        free(*(struct_matrix + i));
    }

    // free the matrix
    free(struct_matrix);

    return 0;
}
