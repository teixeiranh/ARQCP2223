#include <stdio.h>
#include "asm.h"

int fc();
int f2c();
int f3c();
int f4c();

int i, j, res;

// main function
int main(void)
{
	int resC;
	int ii;
	int jj;

	printf("i: ");
	scanf("%d", &i);
	ii=i;

	printf("j: ");
	scanf("%d", &j);
	jj=j;
	printf("\n");

	// f()
	i=ii;
	j=jj;
	resC = fc();
	printf("Result in C f=%d\n", resC);
	i=ii;
	j=jj;
	res = f();
	printf("Result in ASM f=%d\n", res);
	printf("\n");
	

	// f2()
	i=ii;
	j=jj;
	resC = f2c();
	printf("Result in C f2=%d\n", resC);
	i=ii;
	j=jj;
	res = f2();
	printf("Result in ASM f2=%d\n", res);
	printf("\n");

	// f3()
	i=ii;
	j=jj;
	resC = f3c();
	printf("Result in C f3=%d\n", resC);
	i=ii;
	j=jj;
	res = f3();
	printf("Result in ASM f3=%d\n", res);
	printf("\n");

	// f4()
	i=ii;
	j=jj;
	resC = f4c();
	printf("Result in C f4=%d\n", resC);
	i=ii;
	j=jj;
	res = f4();
	printf("Result in ASM f4=%d\n", res);

	return 0;
}

// f()
int fc()
{
	if (i == j)
		res = i - j + 1;
	else
		res = i + j - 1;
	return res;
}

// f2()
int f2c()
{
	if (i > j)
		i = i - 1;
	else
		j = j + 1;
	res = j * i;
	return res;
}

// f3()
int f3c()
{
	int h;
	int g;
	if (i >= j)
	{
		h = i * j;
		g = i + 1;
	}
	else
	{
		h = i + j;
		g = i + j + 2;
	}
	res = g / h;
	return res;
}

// f4()
int f4c()
{
	if (i + j < 10)
		res = 4 * i * i;
	else
		res = j * j / 3;
	return res;
}