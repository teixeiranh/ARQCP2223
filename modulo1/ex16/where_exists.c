#include <stdio.h>

/*
    Function that returns a pointer in a string with the starting location of another string.
*/
char *where_exists(char *str1, char *str2)
{
    int i;
    int j;
    int allEqual;
    char *pst;
    for (i = 0; *(str2 + i) != '\0'; i++)
    {
        pst = str2 + i;

        for (j = 0; *(str1 + j) != '\0'; j++)
        {
            allEqual = 1;
            char character1 = *(str2 + i + j);
            char character2 = *(str1 + j);
            if (character2 != character1)
            {
                allEqual = 0;
                break;
            }
        }
        if (allEqual == 1)
        {
            return pst;
        }
    }
    return NULL;
}