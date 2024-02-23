.section .data

.section .text
    .global sum_n2

sum_n2:
										# prologue
	pushq %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	movq $0, %rax 						# moves 0 to output
	
	movq $1, %r8						# moves 1 to r8, set as counter
	
	movslq %edi, %rcx 					# moves first argument of sum_n2 from edi (32 bits) to rcx
	
	cmpq $0, %rcx 						# checks if the argument is equal to zero
	jle end 							# jumps to end if argument is zero or negative
	
loop:
	movq %r8, %rdx 						# moves counter value to rdx
	
	imulq %r8, %rdx 					# gets the square of the counter value into rdx
	
	addq %rdx, %rax						# adds rdx to the output
		
	cmpq %r8, %rcx						# checks if counter reached the argument of sum_n2
	je end								# jump to end if true

	incq %r8							# increments the counter by 1
	jmp loop							# restarts the loop 

end:
										# epilogue
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
