# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global cube

cube:
	# prologue ---
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ---
	pushq %rbx # calle-saved

	movq $0, %rax # moves 0 to rax
	movq $0, %rcx # moves 0 to rcx

	movslq %edi, %rax # moves the integer value from edi (32 bits) to the return long (64 bits)
	movslq %edi, %rcx # moves the integer value from edi (32 bits) to the return long (64 bits)

	imulq %rcx, %rax # multiplies rcx by rax and stores value at rax
	imulq %rcx, %rax # multiplies rcx by rax and stores value at rax

	popq %rbx # calle-saved

	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

