#include <stdio.h>
#include "changes.h"

int main(void)
{
	int value = 0xfedcba98;
    int *ptr = &value;
    changes(ptr);
    printf("Changed value = %x\n", *ptr);

	return 0;
}
