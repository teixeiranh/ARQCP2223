#include <stdio.h>

#define size 30

void fill_array(int *vec);

int main()
{

    int i;
    int vec[size];
    int sum;
    sum = 0;
    
    double average;
    average = 0.0;

    fill_array(vec);

    for (i = 0; i < size; i++)
    {
        printf("value is %d \n", vec[i]);
        sum = sum + vec[i];
    }
    
    printf("\n");
    average = (double) sum / size;

    printf("The average value is: %f.",average);

    return 0;
}

void fill_array(int *vec)
{

    int i;

    for (i = 0; i < size; i++)
    {
        printf("\nEnter value:");
        scanf("%d", &vec[i]);
    }
    printf("\n");
}