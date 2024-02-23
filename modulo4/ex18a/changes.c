#include "changes.h"

void changes(int *ptr)
{	
	int bytes = (*ptr);   								// apontado para bytes 
	
	int secondbyte = (bytes >> 8) & 0x000000FF;			// shift de um byte à direita e mascara para o segundo byte	
	
	if (secondbyte <= 15) return;						// retorna se segundo byte menor ou igual a 15 
	
	int invthirdbyte = ~(bytes) & 0x00FF0000;			// inverte e mascara para o terceiro byte
	
	int remainingbytes = (bytes & 0xFF00FFFF);			// mascara os restantes bytes	
	
	int altered = invthirdbyte + remainingbytes;		// soma os restantes ao terceiro byte invertido	
	
	(*ptr) = altered;									// aloca o valor no espaço de memoria do apontador
}
