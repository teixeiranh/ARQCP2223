# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global mixed_sum

mixed_sum:
	# prologue ----------------------------------------------------
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp
	subq $24, %rsp # room for 3 local variables


	# function body ------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq %rbx
	pushq %r12
#	pushq %r13
#	pushq %r14
#	pushq %r15

	movq %rdi, -8(%rbp) # int a
	movq %rsi, -16(%rbp) # int b
	movq %rdx, -24(%rbp) # int pos

	pushq %rdi
	pushq %rsi
	pushq %rdx
	call join_bits # first call to join_bits
	popq %rdx
	popq %rsi
	popq %rdi

	movl %eax, %r12d # store the returned value @r12d

	movl -8(%rbp), %esi # swift a to argument b
	movl -16(%rbp), %edi # swift b to argument a

	pushq %rdi
	pushq %rsi
	pushq %rdx
	call join_bits # second call to join_bits
	popq %rdx
	popq %rsi
	popq %rdi

	addl %eax, %r12d # sum both calls

	movl %r12d, %eax # return the sum

#	popq %r15
#	popq %r14
#	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue -----------------------------------------------------
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

