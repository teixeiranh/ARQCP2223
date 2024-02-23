# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global distance

distance:
	# prologue ----------------------------------------------------
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp
	subq $16, %rsp # room for 2 local variables

	# function body ------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15

	movl $0, %r14d # clears r14d
	movl $0, %r15d # clears r15d
	movl $0, %ebx # clears ebx
	movq %rdi, -8(%rbp) # stores the address of rdi 
	movq %rsi, -16(%rbp) # stores the address of rsi 

	# find the size of string a
	size_a:
	movl $0, %r13d

	movb (%rdi), %r13b
	cmpb $0, %r13b
	je size_b
	addq $1,%rdi
	addl $1, %r14d
	jmp size_a

	# find the size of string b
	size_b:
	movl $0, %r13d

	movb (%rsi), %r13b
	cmpb $0, %r13b
	je compare

	addq $1,%rsi
	addl $1, %r15d
	jmp size_b

	# compare the sizes of the strings, case is not equal then exist and return -1
	compare:
	cmpl %r14d,%r15d
	jne not_equal

	# reset variables to make the calculation
	movq $0, %r12
	movq $0, %r13
	movq -8(%rbp),%rdi # rest the value of the argument @rdi
	movq -16(%rbp),%rsi # rest the value of the argument @rsi

	equal:
	movb (%rdi), %r12b
	cmpb $0, %r12b
	je end_distance # go and return the distance
	movb (%rsi), %r13b
	cmpb %r12b, %r13b
	jne increment_value # increment the value to be returned
	jmp increment_pointer # increment just the pointer in case values are equal

	# increment the value of the distance (stored @ebx) and the pointer
	increment_value:
	addl $1, %ebx
	addq $1,%rsi
	addq $1,%rdi
	jmp equal

	# increment the pointer only
	increment_pointer:
	addq $1,%rsi
	addq $1,%rdi
	jmp equal

	# not equal just return -1
	not_equal:
	movl $-1, %eax
	jmp end

	# moves the sum @ebx to eax to be returned
	end_distance:
	movl %ebx,%eax

	end:

	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue -----------------------------------------------------
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

