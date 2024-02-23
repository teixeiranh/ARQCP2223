#include <stdio.h>
#include "fun1.h"

int main(void)
{
	structA varA;
	varA.y = 1;
	varA.x = 2;
	structA *ptrA = &varA;
	
	structB varB;
	varB.a = varA;
	varB.b = ptrA;
	varB.z = 3;
	structB *ptrB = &varB;
	
	short x = fun1(ptrB);
	printf("s->a.x : %d\n", x);
	
	short z = fun2(ptrB);
	printf("s->z : %d\n", z);
	
	short* z1 = fun3(ptrB);
	printf("&s->z : %p\n", z1);
	
	short x1 = fun4(ptrB);
    printf("s->b->x : %hd\n", x1);

	return 0;
}
