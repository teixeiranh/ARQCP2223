# Initialized data-------------------------------------------------
.section .data

	.global num

# Coding instructions-------------------------------------------------
.section .text
    .global check_num

check_num:

	movl num(%rip), %eax # move A to eax
	cdq # converts double to quad
	movl $2,%ecx # move 2 to ecx
	idivl %ecx # perform the division of ecx and the value 2
	
	cmp $0,%edx # compare the value 0 with the value @edx
	je even # if equal jump to "even"

	cmpl $0, num(%rip) # compare the value 0 with the value @num
	js odd_negative

	movl $7,%eax # move 7 to eax
	jmp end # if true jump to "end"
	
even:
	cmpl $0, num(%rip) # compare 0 with num
	js even_negative # if negative go to "even_negative"
	movl $6,%eax # move 6 to eax
	jmp end # go to end

odd_negative:
	movl $5,%eax # move 5 to eax
	jmp end # jump to end

even_negative:
	movl $4,%eax # move 4 to eax register
	
end:
	ret # return the value
