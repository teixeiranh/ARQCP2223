.section .data
		
.section .text
    .global call_incr

call_incr:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	# short x1 = w+3;
	subq $6, %rsp
	
	addw $3, %di
	
	movw %di, -2(%rbp)
	
	# int x2 = incr(&x1, 0xC3)
	
	leaq -2(%rbp), %rdi
	
	movb $0xC3, %sil
	
	call incr
	
	movl %eax, -6(%rbp)
	movswl %di, %edi
	
	addl %edi, -6(%rbp)
	movl -6(%rbp), %eax
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
