#include <stdio.h>

int main() {
	
	int x = 5;
	int* xPtr = &x;
	float y = *xPtr + 3;
	int vec[] = {10, 11, 12, 13};
	
	printf("x = %d, y = %f\n", x, y);
	printf("x address = %p, xptr address = %p\n", &x, &xPtr);
	printf("value pointed by xptr = %d\n", *xPtr);
	printf("vec address = %p\n", vec);
	printf("vec values in [0]:%d, [1]:%d, [2]:%d, [3]%d\n", vec[0], vec[1], vec[2], vec[3]);
	printf("vec values in [0]:%p, [1]:%p, [2]:%p, [3]%p\n", vec, vec+1, vec+2, vec+3);
	
	// a) The printed values represent the human interpretable information assigned to a certain memory address.
	//    The printed addresses represent the location of where the information is stored in the memory of the computer.
	// b) Vec and vec[0] addresses represent the same address, as the array address is the same as that of the first element.
	//    Since it is an array of integers, consecutive elements of the array will have a memory address with an offset
	//    of 4 from the previous element. As such the addess of vec[0] ends in 0, the one from vec[1] ends in 4,
	//    and the address of vec[2] ends in 8.
	// c) No. The memory address of the array is set arbitrarily in each run, even in the same machine.
}
