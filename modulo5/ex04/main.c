#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void)
{

	Student s;

	s.age = 32;
	s.number = 869;
	strcpy(s.name, "Nuno");
	strcpy(s.address, "Braga");
	char *new_address = "Nowhere Street";
	Student *ptr = &s;

	update_address(ptr, new_address);

	printf("%s\n", ptr->address);

	return 0;
}


// void test_Zero()
// { 
//     run_test((char*)""); 
// }
// void test_One()
// { 
//     run_test((char*)"Nowhere Street"); 
// }
// void test_Two()
// { 
//     run_test((char*)"Third  Street"); 
// }
// void test_Three()
// { 
//     run_test((char*)"Third  Avenue,178"); 
// }
