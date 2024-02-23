#include <stdio.h>

/*
    Function that sorts and array of integers without duplication of values.
*/
int sort_without_reps(int *src, int n, int *dest)
{

    int temp;
    int i, j;

    // copies the first array to the second array
    for (i = 0; i < n; i++)
    {
        dest[i] = src[i];
    }

    // sorts the dest vector
    for (i = 0; i < n; i++)
    {
        for (j = i + 1; j < n; j++)
        {
            if (dest[j] < dest[i])
            {
                temp = dest[i];
                dest[i] = dest[j];
                dest[j] = temp;
            }
        }
    }

 

    // clears duplicates
    i = 1;
    int dim = n;
    while (i < dim)
    {
        if (dest[i] == dest[i - 1])
        {
            dim--;
            for (j = i + 1; j < n; j++)
            {
                dest[j - 1] = dest[j];
            }
        }
        else
            i++;
    }

    return dim;
}