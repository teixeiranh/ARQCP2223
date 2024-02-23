#include <stdio.h>
#include "find_word.h"

int main() {
	
	char* word = "quase";
	printf("Word is: %s\n", word);
	
	char* foundAddress = find_word(word, "Estamos quase no ultimo exercicio.");
	
	printf("Found at address: %p\n", foundAddress);
	
	return 0;
}
