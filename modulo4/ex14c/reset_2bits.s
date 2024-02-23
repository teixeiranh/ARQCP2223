# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global reset_2bits

reset_2bits:
	# prologue ----------------------------------------------------
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp
	subq $16, %rsp # room for 2 local variables

	# function body ------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq %rbx
	pushq %r12
#	pushq %r13
#	pushq %r14
#	pushq %r15

	movq %rdi, -8(%rbp) # stores the arguments
	movq %rsi, -16(%rbp) # stores the arguments

	pushq %rdi
	pushq %rsi
	call reset_bit # first call to reset_bit @position specified @rdi
	popq %rsi
	popq %rdi

	movl $31, %r12d # moves 31 to r12d
	subl %esi, %r12d # subtracts esi (position) to r12d
	movl %r12d, %esi # moves back r12d to the argument position

	pushq %rdi
	pushq %rsi
	call reset_bit # second call to reset bit @31-position specified @rdi
	popq %rsi
	popq %rdi

#	popq %r15
#	popq %r14
#	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue -----------------------------------------------------
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

