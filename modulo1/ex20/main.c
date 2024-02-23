#include <stdio.h>
#include "find_all_words.h"

int main()
{

	char word[200] = "mesmo";
	printf("Word is: %s\n", word);

	char str[] = "Estamos mesmo mesmo mesmo no ultimo exercicio.";
	char *address[200];

	int strNumberOfElements = sizeof(str) / sizeof(str[0]);
	int addrsNumberOfElements = sizeof(address) / sizeof(address[0]);

	// Ensure addrs has the proper size
	if (addrsNumberOfElements < strNumberOfElements)
	{
		printf("Invalid addrs size!");
		return 0;
	}

	find_all_words(str, word, address);

	int i;
	for (i = 0; **(address + i) != '\0'; i++)
	{
		printf("%p\n", *(address + i));
	}

	return 0;
}
