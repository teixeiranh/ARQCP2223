#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

// push function
long push(long *stack, long valueAdded, long size)
{

    long *ptr_temp = stack;
    // it will reallocate space for another element on the stack
    ptr_temp = (long *)realloc(stack, (size + 1) * sizeof(long));
    if (ptr_temp != NULL)
    {
        stack = ptr_temp;
        ptr_temp += size;
        size++;
        (*ptr_temp) = valueAdded;   // assing the value to the last pushed value on the stack
    }
    return size;
}

// pop function
long pop(long *stack, long size)
{
    // it will reallocate space for the stack dinamically, decreasing it's size
    stack = (long *)realloc(stack, (size - 1) * sizeof(long));
    size--;
    
    return size;
}
