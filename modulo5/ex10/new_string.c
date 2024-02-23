#include "main.h"
#include <string.h>
#include <stdlib.h>

char *new_str(char str[80])
{

    int size_of_string = strlen(str)+1;                           // size of string +1 for the null char

    char *ptr = NULL;

    ptr = (char *)malloc(size_of_string * sizeof(char));     // dinamically find the size with malloc

    int i = 0;

    // fill the string
    for (i = 0; i < size_of_string; i++)
    {
        ptr[i] = str[i];
    }

    return ptr;                                            // return the pointer to the string created
}