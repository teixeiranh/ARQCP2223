# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global greatest

greatest:
	# prologue ---
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ---
	pushq %rbx # calle-saved
	pushq %r12 # calle-saved

	compare_a_to_b:
	cmpl %esi,%edi # compares value a to value b
	jge greater_a # if a is greater or equal than...
	jmp greater_b # if b is greater...

	compare_c_to_d:
	cmpl %ecx,%edx # compares value c to value b
	jge greater_c # if c is greater or equal than...
	jmp greater_d # if d is greater...

	greater_a:
	movl %edi,%ebx # stores the value of a at ebx
	jmp compare_c_to_d # jumps to compare b and c

	greater_b:
	movl %esi,%ebx # stores the value of b at ebx
	jmp compare_c_to_d # jumps to compare b and c

	greater_c:
	movl %edx,%r12d # stores the value of c at r12d
	jmp find_biggest # jumps to find the greatest

	greater_d:
	movl %ecx,%r12d # stores the value of d at r12d
	jmp find_biggest # jumps to find the greatest 

	find_biggest:
	cmpl %r12d,%ebx # compares r12d (greatest of b and c) to ebx (greatest of a and b)
	jge first_one # case a or b is the greatest than...
	jmp second_one # case c or d is the greatest than...

	first_one:
	movl %ebx,%eax # moves the value ebx to be returned 
	jmp end

	second_one:
	movl %r12d,%eax # moves the value r12d to be returned
	jmp end

	end:

	popq %r12 # calle-saved
	popq %rbx # calle-saved

	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

