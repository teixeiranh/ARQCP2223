#include <stdio.h>
#include "changes_vec.h"

int main(void)
{
	int vec[] = {0,0xff8fffff,0xff,0xff0fffff,0xff8fffff,0xff7f0fff,0x700000,0x800000};
    int num = sizeof(vec)/sizeof(vec[0]);
    
    int *ptrvec = vec;
 
    changes_vec(ptrvec, num);
    
    for (int i = 0; i < num; i++) 
    {
        printf("Changed value at position %d = %d\n", i, *(vec + i));
    }

	return 0;
}
