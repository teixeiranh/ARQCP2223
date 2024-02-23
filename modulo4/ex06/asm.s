.section .data

.section .text
    .global test_equal

test_equal:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
char_loop:
	cmpb $0, (%rdi)						# checks if the string in the first parameter reached an end
	je next_string						# jumps to check string in the second parameter if true
		
	cmpb $0, (%rsi)						# checks if the string in the second parameter reached an end
	je diff								# jumps to diff if true
				
	movb (%rdi), %dl					# moves value at the position of the pointer to the first parameter to dl
	movb (%rsi), %cl					# moves value at the position of the pointer to the second parameter to cl
	
	cmpb %dl, %cl						# checks the char of each string at the same position   
	jne diff							# jumps to diff if not equal
	
	incq %rdi							# increments pointer to first parameter
	incq %rsi							# increments pointer to second parameter
	jmp char_loop

next_string:
	cmpb $0, (%rsi)						# checks if the string in the second parameter reached an end
	jne diff							# jumps to diff if true
	
	movl $1, %eax						# moves 1 to output meaning the parameters point to different strings equal in value
	jmp end

diff:
	movl $0, %eax						# moves 0 to output meaning the parameters point to different strings different in value		
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
