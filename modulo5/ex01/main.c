#include <stdio.h>

// type definition for the union
typedef union
{
	char vec[32];
	float a;
	int b;
} Union_u1;

// funtion to print the size of the union
void printSizeOfUnion(Union_u1 u)
{
	printf("Size of Union is: %ld bytes!\n", sizeof(u));
}

// type definition for the structure
typedef struct
{
	char vec[32];
	float a;
	int b;
} Struct_s1;

// funtion to print the size of the structure
void printSizeOfStruct(Struct_s1 s)
{
	printf("Size of structure is: %ld bytes!\n", sizeof(s));
}

// main function
int main()
{
	// declaring variables
	Union_u1 unionToBePrinted;
	Struct_s1 structToBePrinted;

	// call the functions to print
	printSizeOfUnion(unionToBePrinted);
	printSizeOfStruct(structToBePrinted);

	return 0;
}

// ------------------------------------------------------------------------------------------------
// Os resultados são diferentes pelo facto de numa união, ao contrário da estrutura, todos os 
// membros partilham a mesma memória. Em todos os casos de uniões, será igual ao tamanho do seu maior
// elemento que neste caso é de 32 bytes(char vec[32] = 32 bytes). 
// Uma estrutura, por seu lado, guarda espaço para todos os seus elementos e, neste caso, 
// size(structToBePrinted) = 32 bytes (char vec[32]) + 4 bytes (float) + 4 bytes (int) = 40 bytes.
// ------------------------------------------------------------------------------------------------
