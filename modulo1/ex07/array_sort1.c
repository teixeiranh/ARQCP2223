#include <stdio.h>

/*
    Function that sorts an array of integers in ascending order.
*/
void array_sort1(int *x, int n)
{
    int i;
    int numb;
    int j;

    for (i = 0; i < n; i++)
    {
        for (j = i + 1; j < n; j++)
        {
            if (x[i] > x[j])
            {
                // Code to flip the values
                numb = x[i];
                x[i] = x[j];
                x[j] = numb;
            }
        }
    }
}