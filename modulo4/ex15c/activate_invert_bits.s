.section .data
		
.section .text
    .global activate_invert_bits

activate_invert_bits:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	call activate_bits

	notl %eax							# inverts the bits

	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
