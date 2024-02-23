#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

extern int nsets;

int main() {
	
	int size = 100;
	int vec[size];
	int limit = 20;
	
	populate(vec, size, limit);
	
	int i;
	int x,y,z;
	
	for (i = 0; *(vec + i + 2) != '\0'; i++) 
	{
		x = *(vec + i);
		y = *(vec + i + 1);
		z = *(vec + i + 2);
		
		if (check(x,y,z) == 1)
			inc_nsets();
	}
	printf("There are %d sets of three consecutive elements in the array.\n", nsets);
	return 0;
}
