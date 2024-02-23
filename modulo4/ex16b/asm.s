# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global join_bits

join_bits:
	# prologue ----------------------------------------------------
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq %rbx
	pushq %r12
	pushq %r13

	movl %edi, %ebx # a stored @ebx
	movl %esi, %r12d # b stored @r12d

	movb %dl, %cl # pos stored @cl
	movl $-1, %r13d # moves integer of 1's to r13d
	movl $0, %esi # moves 0 to esi

	movl %ebx, %eax # moves a to eax

	cmpb $31, %cl # check if the position to change is 31
	jge end

	incb %cl # increment pos
	shl %cl, %r13d # create mask

	movl %r13d, %esi # moves the mask to esi
	andl %r12d, %esi # bitwise operator and to apply mask to b

	movl $-1, %eax # set eax full of 1's

	xorl %r13d, %eax # invert the bits of eax
	andl %ebx, %eax # bitwise and to clean eax

	end:
	or %esi, %eax # bitwise or A | B

	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue -----------------------------------------------------
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

