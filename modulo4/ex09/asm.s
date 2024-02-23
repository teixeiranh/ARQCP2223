# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global calculate
	.global print_result

calculate:
	# prologue ---
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp
	subq $16, %rsp # room for 2 local variables

	# function body ---
	# a@edi, b@esi
	pushq %rbx # calle-saved
	pushq %r12 # calle-saved
	pushq %r13 # calle-saved
	pushq %r14 # calle-saved
	pushq %r15 # calle-saved	
	pushq %rdx

	# diff a-b
	movl %edi, %r12d
	subl %esi, %r12d 
	movl %r12d, -8(%rbp) # diff @-8(%rbp)

	# product a*b
	movl %esi, %r13d
	imull %edi, %r13d
	movl %r13d, -16(%rbp) # product @-16(%rbp)

	movl %edi, %r14d # a @r14d
	movl %esi, %r15d # b @r15d
	
	movb $42,%dil # first arg
	movl %r14d,%esi # second arg
	movl %r15d,%edx # third arg
	movl -16(%rbp),%ecx # fourth arg
	
	# print_result(a,*,b,product)
	# '*' @rdi, a @rsi, b @rdx, product @rcx
	call print_result

	movb $45,%dil # first arg
	movl %r14d,%esi # second arg
	movl %r15d,%edx # third arg
	movl -8(%rbp),%ecx # fourth arg

	# print_result(a,*,b,product)
	# '*' @rdi, a @rsi, b @rdx, product @rcx
	call print_result

	movl -8(%rbp),%eax
	subl -16(%rbp),%eax

	popq %rdx
	popq %r15 # calle-restored
	popq %r14 # calle-restored
	popq %r13 # calle-restored
	popq %r12 # calle-restored
	popq %rbx # calle-restored

	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

