.section .data

.section .text
    .global calc

calc:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	imulq $2, %rdi						# multiplies A by 
	
	subq (%rsi), %rdi					# subtracts value in B pointer to 2*A stores in rdi
	
	subq $4, %rdx						# subtracts 4 to C stores in rdx
	
	imulq %rdx, %rdi					# multiplies C-4 with 2*A-B stores in rdi
	
	movq %rdi, %rax						# moves rdi to output
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
