#include <stdio.h>
#include "palindrome.h"


int main() {
	
	char str[] = "Never odd or even.";
	
	int pal = palindrome(str);	
	
	if (pal == 1) 
		printf("'%s' is a palindrome.\n", str);
	else 
		printf("'%s' is not a palindrome.\n", str);
	
	return 0;
}
