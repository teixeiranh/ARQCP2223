#include <stdio.h>
#include <string.h>

int string_to_int(char *str);

int main()
{
    int size;
    char string[30];
    int value;

    printf("Enter a string.\n");
    scanf("%s", &string);

    value = string_to_int(string);
    printf("The value is %d", value);

    return 0;
}

int string_to_int(char *str)
{
    int size;
    int i;
    size = strlen(str);

    char car;

    int value;
    value = 0;
    int multiplier;
    multiplier = 1;

    for (i = size - 1; i >= 0; i--)
    {
        car = str[i];
        value = value + ((int)car - 48) * multiplier;
        multiplier = multiplier * 10;
    }

    return value;
}