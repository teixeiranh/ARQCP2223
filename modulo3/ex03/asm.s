# Initialized data-------------------------------------------------
.section .data
	.global ptr1
	.global ptr2

# Coding instructions----------------------------------------------
.section .text
	.global str_copy_porto2

str_copy_porto2:
	movq ptr1(%rip), %rsi # moves the pointer ptr1 to rsi
	movq ptr2(%rip), %rdi # moves the pointer ptr2 to rdi
	movq $0, %rax # clears the rax value
	
str_loop:
	movb (%rsi), %cl # moves the pointer in rsi to cl
	
	cmpb $111, %cl # compares character o (ascii 111) to the pointed value in cl
	je str_replace_lower # if equal jump to replace lower
	movb %cl, (%rdi)  # move the value in cl to rdi

	cmpb $79, %cl # compares character O (ascii 79) to the pointed value 
	je str_replace_upper # if equal jump to replace upper
	
	movb %cl, (%rdi)  # move the value in cl to rdi
	
	jmp increase_pointer # increase the pointer
	
str_replace_lower:
	movb $117, (%rdi) # moves the ascii value 117 (u) to rdi
	jmp increase_pointer # increase the pointer
	
str_replace_upper:
	movb $85, (%rdi) # moves the ascii value 85 (U) to rdi
	jmp increase_pointer # increase the pointer

increase_pointer:
	cmpb $0, %cl # check if we have no more characters left in the string
	jz end # jump to end
	
	incq %rax # increase rax
	incq %rsi # increase rsi
	incq %rdi # increase rdi
	
	jmp str_loop # go back to looping

end:
	ret # return
