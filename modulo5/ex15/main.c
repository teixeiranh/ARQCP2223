#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

// main function
int main(void)
{

    int size_of_stack = 1;

    long *stack = (long *)malloc(1 * sizeof(long));

    long *pointer_to_stack = stack;

    printf("\nSize before pushing is = %d.\n", size_of_stack);

    size_of_stack = push(stack, 2, size_of_stack);

    printf("\nSize after pushing is = %d.\n", size_of_stack);

    size_of_stack = pop(stack, size_of_stack);

    printf("\nSize after poping is = %d.\n\n", size_of_stack);

    free(stack);

    return 0;
}
