# Initialized data-------------------------------------------------
.section .data
    .global ptr1

# Coding instructions----------------------------------------------
.section .text
    .global seven_count

seven_count:
    
    movq $0, %rax # cleans rax register
	movq ptr1(%rip), %rsi # moves prt1 pointer to edx

string_loop:

	movb (%rsi), %cl # moves the pointer in edx to cl
	cmpb $0, %cl # compares with the values in the pointer
	je end_loop # if equal jumpo to "end_loop"
	
	cmpb $55, %cl # compare character 7 (ascii 55) to the value of cl
	je find_seven # if equal jump to "find_seven"
	
	incq %rsi # increment the value to compare the next char
	jmp string_loop # start the loop again
    
find_seven:
	incq %rax # increment the counting of the variable of number 7
	incq %rsi # increment the value to compare the next char
	jmp string_loop

end_loop:
    ret

