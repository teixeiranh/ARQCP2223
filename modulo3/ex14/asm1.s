# Initialized data-------------------------------------------------
.section .data
	.global ptrvec
	.global num
	.global x

# Coding instructions----------------------------------------------
.section .text
	.global exists

exists:
	
	pushq %rbx

	movq $0,%rcx

	movl x(%rip), %ebx # move x to ebx 
	movl $0, %edx # move 0 to edx
	movq ptrvec(%rip), %rcx # move the pointer to ecx
	movl $0, %eax # move 0 to eax

looping:

	cmpl num(%rip), %edx # check if finalized 
	je vec_end

	cmpl (%rcx), %ebx # compare current value to value pretended
	je affirmative # if equal go to yes
	jmp increment
	
affirmative:
	incl %eax
	
increment:
	addq $4, %rcx # increment pointer
	incl %edx # incremnet counter
	jmp looping

vec_end:

	cmpl $1, %eax
	jg duplicate 
	movl $0, %eax
	jmp end

duplicate:

	movl $1, %eax

end:
	
	popq %rbx

	ret
