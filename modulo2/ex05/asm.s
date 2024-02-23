# Initialized data
.section .data
	.global s

# Coding instructions
.section .text
	.global swapBytes # short int swapBytes(void)

swapBytes:
	movw s(%rip), %ax # move value of x from memory to ax
	movb %al , %cl # move the value of al to cl
	movb %ah , %ch # move the value of ah to ch
	movb %cl, %ah # move valor de cl para ah
	addb %ch,%ch # doubles the values at ch
	movb %ch, %al # move valor de ch to al
	ret
