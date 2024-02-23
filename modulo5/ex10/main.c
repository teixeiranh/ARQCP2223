#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "main.h"

int main(void)
{

    char *new_String = "No banco!";

    char *res = NULL;               // start the value as null

    res = new_str(new_String);      // calling the function and storing the result in res

    printf("Onde vai ficar o Ronaldo no jogo da selecção? \n%s\n", res);

    free(res);

    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------
// É possível devolver o endereço de memória da string pois é usadas para a criação desse endereço a função malloc,
// que se encontra na libraria "stdlib.h". Esta cada vez que aloca um bloco de memória devolve um apontar para o bloco.
// Esse apontar é genérico, pois o protótipo é "void* malloc(size_t size);", pelo que deve ser feito um cast explicito 
// ou implicito para determinado tipo. 
// Efectivamente, o que nos permite o acesso ao endereço de memória na heap é o alocador explicito malloc utilizado,
// que nos devolve sempre o endereço do bloco de memória em causa utilizado.
// ---------------------------------------------------------------------------------------------------------------------
