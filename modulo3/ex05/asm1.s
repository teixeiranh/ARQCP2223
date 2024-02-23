# Initialized data-------------------------------------------------
.section .data
	.global num

# Coding instructions----------------------------------------------
.section .text
	.global vec_avg

vec_avg:

	pushq %rbx
	pushq %rdx
	call vec_sum # call the function vec_sum
	popq %rdx

	movl $0, %edx # moves the value 0 to edx
	movw num(%rip), %bx # moves the global value num to ecx
	cmpw $0, %bx # compares 0 to ecx to check if no more elements in the array
	je zero

	cdq
	idivw %bx # divides the called value by the value of bx
	jmp  end

zero:
	movl $0, %eax # return the value 0

end:

	popq %rbx
	ret
