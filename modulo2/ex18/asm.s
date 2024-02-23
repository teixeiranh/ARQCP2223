# Initialized data-------------------------------------------------
.section .data
	.global i
	.global n
	A:
		.int 4
	B:
		.int 2

# Coding instructions-------------------------------------------------
.section .text
    .global sum

sum:

	movl A(%rip), %eax # move A to eax
	cdq # converts double to quad
	imull A(%rip), %eax # multiplies A with eax making eax squared
	movl B(%rip), %ecx # move A to ecx
	idivl %ecx # divides eax by ecx (current value of b)
	movl %eax, %ebx # moves eax to ebx
	movl i(%rip), %ecx # moves i to ecx
	
check:
	cmp n(%rip), %ecx # compare n to ecx
	je end # if true jump to end
	incl %ecx # increment by 1 the value of ecx
	
loop:
	movl %ecx, %edx # move ecx to edx
	imull %edx, %edx # multiplies edx
	imull %ebx, %edx # multiplies ebx by edx
	addl %edx, %eax # adds the value at edx to eax
	jmp check # verify is the loop is to stop

end:
	ret # return the value
