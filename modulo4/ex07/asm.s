# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global count_odd

count_odd:
	# prologue ---
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ---
	pushq %rbx # calle-saved
	pushq %r12 # calle-saved
	
	movl $0, %eax # clears the registry of eax
	movl $0, %ebx # clears he registry of ebx
	movb $2, %r12b # moves the divisor to r12b

	looping:
	cmp $0,%esi # check if array is fully traversed
	je end

	movb (%rdi), %al # moves the char value at rdi to al
	cbw # converts the byte value to word value at al to ax (to store the divident)
	idivb %r12b # divides ax by r12b
	cmpb $0,%ah # check the remainder
	jne odd_found # if not equal to 0 then...

	increment:
	addq $1,%rdi # increment the pointed value
	decl %esi # decrement the counter
	jmp looping

	odd_found:
	incl %ebx # increment the value to use in the output
	jmp increment

	end:
	movl %ebx, %eax # move ebx to the output
	
	popq %r12 # calle-saved
	popq %rbx # calle-saved

	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

