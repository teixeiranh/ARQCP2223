# Initialized data-------------------------------------------------
.section .data

	.global i
	.global j

# Coding instructions-------------------------------------------------
.section .text

    .global f
	.global f2
	.global f3
	.global f4

# f function----------------------------------------------------------
f:

	movl i(%rip), %eax # move i to eax
	cdq # converts double to quad
	cmp j(%rip), %eax # compare j to eax
	je conditionf # if equal jump to
	
	addl j(%rip), %eax # add j to eax
	subl $1, %eax # subtract 1 from eax
	
	jmp end # jump to end
	
conditionf:
	subl j(%rip), %eax # subtract j from eax
	addl $1, %eax # add 1 to eax
	jmp end

# f2 function---------------------------------------------------------
f2:

	movl i(%rip), %eax # move i to eax
	cdq # converts double to quad
	cmpl j(%rip), %eax # compare j to eax
	jg conditionf2 # if greater than jump to
	
	movl j(%rip), %eax # move i to eax
	addl $1, %eax # add 1 to eax
	imull i(%rip), %eax # multiply i times eax
	jmp end
	
conditionf2:
	subl $1, %eax # subract 1 to eax
	imull j(%rip), %eax # multiply j with eax
	cdq # converts double to quad
	jmp end

# f3 function---------------------------------------------------------
f3:

	movl i(%rip), %eax # move i to eax
	cdq  # converts double to quad
	cmpl j(%rip),%eax # compares eax to j
	jge conditionf3 # if greater or equal
	
	addl j(%rip), %eax # add j to eax
	addl $2, %eax # add 2 to eax
	cdq  # converts double to quad
	movl j(%rip), %ecx # mov j to ecx
	addl i(%rip), %ecx # move i to ecx
	cdq  # converts double to quad
	idivl %ecx # divides eax by ecx
	jmp end
	
conditionf3:
	addl $1, %eax # add 1 to eax
	movl j(%rip), %ecx # move j to ecx
	imull i(%rip), %ecx # multiply i by ecx
	cdq   # converts double to quad
	idivl %ecx # divides eax by ecx
	jmp end

# f4 function---------------------------------------------------------
f4:

	movl $0, %edx # move 0 to edx
	movl i(%rip), %ecx # move i to ecx
	cdq # converts double to quad
	addl j(%rip), %ecx # add j to ecx
	cmpl $10, %ecx # compare 10 to ecx
	jl condition4 # if less jumpo to condition
	
	movl j(%rip), %eax # move j to eax
	cdq  # converts double to quad
	imull j(%rip), %eax # multiply j by eax 
	movl $3, %ecx # move 3 by ecs
	idiv %ecx # move 3 by ecs
	
	jmp end
	
condition4:
	movl i(%rip), %eax # move i to eax
	cdq  # converts double to quad
	imull i(%rip), %eax # multiply i by eax
	imull $4, %eax # multiply 4 by eax

end:
	ret # return the value
