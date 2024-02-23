#include <stdio.h>
#include <string.h>
int main(void)
{
	// Com união ----------------------------------------------------------------------------------
	union union_u1
	{
		char vec[32];
		float a;
		int b;
	} u;
	
	union union_u1 *ptr = &u;

	strcpy(ptr->vec, "arquitectura de computadores");
	printf("[1]=%s\n", ptr->vec);
	ptr->a = 123.5;
	printf("[2]=%f\n", ptr->a);
	ptr->b = 2;
	printf("[3]=%d\n", ptr->b);
	
	printf("[1]=%s\n", ptr->vec);
	printf("[2]=%f\n", ptr->a);
	printf("[3]=%d\n", ptr->b);

	// --------------------------------------------------------------------------------------------
	// Os resultados das primeiras chamadas do printf estão "correctos" pois a alocação de memória que existe 
	// na união é feita imediatamente antes de serem chamados (não esquecer que na união todos os membros 
	// partilham a mesma memória). 
	// Nas outras chamadas apenas o último membro funciona devidamente, pois foi o último a ser alocado
	// no único espaço de memória disponível.  
	// --------------------------------------------------------------------------------------------

	// Com estrutura ------------------------------------------------------------------------------
	struct struct_s1
	{
		char vec[32];
		float a;
		int b;
	} s;
	
	struct struct_s1 *ptrStrct = &s;

	strcpy(ptrStrct->vec, "arquitectura de computadores");
	printf("[1]=%s\n", ptrStrct->vec);
	ptrStrct->a = 123.5;
	printf("[2]=%f\n", ptrStrct->a);
	ptrStrct->b = 2;
	printf("[3]=%d\n", ptrStrct->b);
	
	printf("[1]=%s\n", ptrStrct->vec);
	printf("[2]=%f\n", ptrStrct->a);
	printf("[3]=%d\n", ptrStrct->b);

	// --------------------------------------------------------------------------------------------
	// Os resultados das chamadas do printf são iguais pois numa estrutura existe espaço guardado
	// para cada um dos seus elementos, ao contrário da união. Neste caso, portanto, as chamadas ao
	// printf serão sempre iguais. 
	// --------------------------------------------------------------------------------------------
	
	return 0;
}
