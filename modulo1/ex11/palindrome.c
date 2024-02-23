#include <ctype.h>
#include <stddef.h>

int palindrome(char *str) {
	
	char *ptr, *rev;
	
    ptr = str;
    
	if ((str != NULL) && (str[0] == '\0')) {
	   return 0;
	}
		
    while (*ptr != '\0') {
        ++ptr;
    }
    --ptr;
 
    for (rev = str; ptr >= rev;) {
		if(isspace(*ptr) || ispunct(*ptr)) {
            --ptr;
            continue;
        }
        if((isspace(*rev) || ispunct(*rev))) {
            rev++;
            continue;
        }
        if (tolower(*ptr) == tolower(*rev)) {
            --ptr;
            rev++;
        }
        else
            break;
    }
	
	if (rev > ptr) {
		return 1;
	} else {
		return 0;
	}
}
