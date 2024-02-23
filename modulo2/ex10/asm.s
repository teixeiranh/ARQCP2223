# Initialized data-------------------------------------------------
.section .data
	.global op1
	.global op2
	.global op3

# Coding instructions-------------------------------------------------
.section .text
	.global sum3ints # short int crossSumBytes

# sum3ints-------------------------------------------------
sum3ints:

	movl op1(%rip),%eax # move op1 to eax (as long 32 bits)
	addl op2(%rip),%eax # add op2 to the value of eax
	addl op3(%rip),%eax # add op3 to the value of eax
	movslq %eax,%rax # move the value of 32 bits eax to 64 bits rax
	
	ret
