#include <stdio.h>

/*
    Function that compresses shorts to an array of integers.
*/
void compress_shorts(short *shorts, int n_shorts, int *integers)
{
    int size_ratio = sizeof(int) / sizeof(short);
    int i;
    int number_of_integer_members = n_shorts / size_ratio;

    for (i = 0; i < number_of_integer_members; i++)
    {
        *(integers + i) = *((int *)(shorts + (size_ratio * i)));
    }
}