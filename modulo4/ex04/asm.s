.section .data

.section .text
    .global sum_smaller

sum_smaller:
										# prologue
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp				
	
	cmpl %edi, %esi						# checks which number is higher
	jl lower							# if number in second argument is lower go to lower

greater:
	movl %edi, (%rdx)					# moves number in first argument to the memory location contained in rdx
	jmp end								# jumps to end
	
lower:	
	movl %esi, (%rdx)					# moves number in second argument to the memory location contained in rdx
	 
end:
	movl %edi, %eax						# moves number in first argument to output
	addl %esi, %eax						# adds number in second argument to output
										# epilogue
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
