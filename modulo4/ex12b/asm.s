# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global count_bits_one

count_bits_one:
	# prologue ---
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ---
	pushq %rbx # calle-saved

	movl $0, %ebx
	movl $0, %edx
	movl $0, %eax

	start_loop:
	test $1, %edi # check low order bit set @edi 
	setnz %al # if not zero then al=1 else al=0 
	addl %eax, %ebx # add the value @eax to to ebx
	shrl $1, %edi # shift left 1 position edi 
	jnz start_loop # if not zero go back to the loop

	movl %ebx, %eax # move the sum value @ebx to output

	popq %rbx # calle-restored

	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

