# Initialized data-------------------------------------------------
.section .data
	.global ptr1

# Coding instructions----------------------------------------------
.section .text
	.global decrypt

decrypt:
	movq ptr1(%rip), %rsi # moves the pointer ptr1 to rsi
	movq $0, %rax # clears the rax value
	
subtract_three:
	movb (%rsi), %cl # moves the pointer in rsi to cl
	
	cmpb $0, %cl # check if the string is at the end
	je end # jump to end

	cmpb $32, %cl # check if the value is equal to space (ascii code 97)
	je increments # increment the pointed value to check the next character

	cmpb $97, %cl # check if the value is equal to a (ascii code 32)
	je increments # increment the pointed value to check the next character
	
	subl $3, (%rsi) # subtracts 3 from the current value, respecting ex06 encryption
	incq %rax # increments the value returned by 1

increments:
	incq %rsi # increase rsi
	jmp subtract_three
	
end:
	ret # return
