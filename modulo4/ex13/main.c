#include <stdio.h>
#include "rotate.h"

int main(void)
{
	int num = 0x55555555;
	int nbits = 1;
	int output_left = rotate_left(num, nbits);
	
	printf("Rotate left output %d : 0x%x\n", output_left, output_left);
	int output_right = rotate_right(num, nbits);
	
	
	printf("Rotate right output %d : 0x%x\n", output_right, output_right);

	return 0;
}
