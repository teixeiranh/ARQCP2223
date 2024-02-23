# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global inc_and_square

inc_and_square:
	# prologue ---
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ---
	pushq %rbx # calle-saved

	incl (%rdi) # increments the value pointed in the first argument at rdi

	movl %esi,%eax # moves the value of 32 bits in the second argument to eax

	imull %esi, %eax # multiplies esi by eax, giving eax squared

	popq %rbx # calle-saved

	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

