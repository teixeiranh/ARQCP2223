#include <stdio.h>

int count(int *vec, int n, int value);

int main()
{

    int i;
    int sum;
    int n;
    int value;
    int counting;
    counting=0;

    printf("What is the size of the array?\n");
    scanf("%d", &n);

    int vec[n];

    for (i = 0; i < n; i++)
    {
        printf("\nEnter value(s):");
        scanf("%d", &vec[i]);
    }

    printf("What is the value you are looking for?\n");
    scanf("%d", &value);

    counting=count(vec, n, value);

    printf("Number of times is = %d",counting);

    return 0;
}

int count(int *vec, int n, int value)
{

    int i;
    int count;
    count = 0;

    for (i = 0; i < n; i++)
    {
        if (value == vec[i])
        {
            count++;
        }
    }

    return count;
}