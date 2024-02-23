#include <stdio.h>

/*
    Functions that transform a string in it's uppercase version.
*/
void upper2(char *str)
{
    
    for (; *str != '\0'; str++)
    {
        if (*str >= 'a' && *str <= 'z')
        {
            *str = *str - 32;
        }
    }
}