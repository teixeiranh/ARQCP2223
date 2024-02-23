.section .data	

.section .text
    .global incr

incr:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	subq $8, %rsp
	
	movswl (%rdi), %edi
	movl %edi, -4(%rbp)

	
	movsbl %sil, %esi
	addl -4(%rbp), %esi
	
	movl %esi, -8(%rbp)
	
	movw -8(%rbp), %di
	
	movl -4(%rbp), %eax
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
