#include <stdio.h>

/*
    Function that capitalizes each word in a given sentence as argument.
*/
void capitalize(char *str)
{
    int space = 1;
    int i;

    for (i = 0; *(str + i) != '\0'; i++)
    {
        char character = *(str + i); // cast to avoid warning
        // verify if it is a space, and set space to 1, and iterate to next position
        if (character == ' ')
        {
            space = 1;
        }
        else
        {
            // if the value is a lower character, and if space is set to 1 (meaning the last position was a space)
            if (character >= 'a' && character <= 'z')
            {
                if (space == 1)
                {
                    *(str + i) = *(str + i) - 32;
                    // set space to 0, because we have found the charecter after the space
                    space = 0;
                }
            }
            else if ((character >= '0' && character <= '9') || (character >= 'A' && character <= 'Z'))
            {
                space = 0;
            }
        }
    }
}