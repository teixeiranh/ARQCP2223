# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global reset_bit

reset_bit:
	# prologue ----------------------------------------------------
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq %rbx
	pushq %r12
	pushq %r13

	movl $1, %ebx
	movq $0, %r12
	movq $0, %r13

	movl %esi, %ecx # moves the value for the position to ecx
	leaq (%rdi), %r13 # stores the adrress of pointed element @r13
	movl (%r13), %r12d # moves the value @r13 to r12d
	movb %sil, %cl # moves the position to cx

	sal %cl, %ebx # shifts cl times ebx to the left
	not %ebx # negates the shifted mask (1->1(0)*%cl)

	and %ebx, (%rdi) # "and" the altered number and mask created

	cmpl (%rdi), %r12d # compares the current masked number and the previous
	je equal # if equal, not altered

	movl $1, %eax # number was altered, returns 1
	jmp end

	equal:
	movl $0, %eax # number not altered, return 0

	end:
	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue -----------------------------------------------------
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

