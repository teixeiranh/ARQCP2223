#include <stdio.h>
#include <ctype.h>

char* find_word(char* word, char* initial_addr) 
{	
	char* str = initial_addr;
	
	if (*str == '\0' || *word == '\0')
		return NULL;
	
	int wordSize = 0;
	int strSize = 0;
	
	int i;
	for (i = 0; *(word + i) !='\0' ; i++)
		wordSize++;
	for (i = 0; *(str + i) !='\0' ; i++)
		strSize++;
	
	for (i = 0; i <= strSize - wordSize; i++) 
	{
		int j;
		for (j = 0; j < wordSize; j++) 
		{
			if (isspace(*(str + i + j)))
				continue;
				
			if (tolower(*(str + i + j)) != tolower(*(word + j)))
				break;
		}
		
		if (j == wordSize) 
		{
			return str + i;
		}
	}
	return NULL;
}
