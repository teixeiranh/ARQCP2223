# Initialized data-------------------------------------------------
.section .data
	.global ptr1
	.global ptr2
	.global num

# Coding instructions----------------------------------------------
.section .text
	.global swap

swap:

	pushq %rbx
#	pushq %rdx
#	pushq %rcx
#	pushq %rsi

	movl $0, %esi # clears the values from esi
	movl $0, %eax # clears the values from eax
	movl $0, %ebx # clears the values from ebx
	movl $0, %ecx # clears the values from ecx
	movl $0, %edx # clears the values from edx
	movq ptr1(%rip), %rcx # moves the pointer to rbx
	movq ptr2(%rip), %rdx # moves the pointer to rdx

looping:

	cmpl num(%rip), %esi # checks if the array was traversed
	je end # if yes then finalize

	movb (%rcx), %al # moves pointed rbx value to al
	movb (%rdx), %bl # moves pointed rdx value to cl
	movb %bl, (%rcx)  # swaps first
	movb %al, (%rdx) # swaps second

	addq $1, %rcx
	addq $1, %rdx
	
	incl %esi # increment the esi check if already finished
	jmp looping
	
end:

#	popq %rsi
#	popq %rcx
#	popq %rdx
	popq %rbx
	ret
