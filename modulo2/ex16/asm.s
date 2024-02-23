# Initialized data-------------------------------------------------
.section .data

	.global num

# Coding instructions-------------------------------------------------
.section .text
    .global steps

steps:

	movl $0,%edx # move 0 to edx
	movl num(%rip),%eax # move num to eax
	cdq # converts double to quad

	# List of operations from exercise:
	imull $3,%eax
	addl $6,%eax
	movl $3,%ecx
	cdq # converts double to quad

	idivl %ecx
	addl $12,%eax
	subl num(%rip),%eax
	subl $1, %eax
    
	ret # return the value
