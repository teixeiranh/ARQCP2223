# Initialized data-------------------------------------------------
.section .data
    .global A
    .global B

# Coding instructions-------------------------------------------------
.section .text
    .global isMultiple

# isMultiple-------------------------------------------------
isMultiple:

	movl $0,%edx
    
	movl A(%rip), %eax # move A to eax
	cltd # converts the signed long in % eax to the signed double long in % edx :% eax
	movl B(%rip), %ecx
	cltd # converts the signed long in % eax to the signed double long in % edx :% eax
	
	cmpl $0, %ecx # compare 0 with B, if equal jump to zero condition
	je zero # if equal to 0, jump to "zero"
	
	idivl %ecx # divide A for B

	movl $0,%eax # move 0 to eax
	movl $0,%ecx # move 0 to ecx

	cmpl %edx,%ecx # compare edx (remainder) with ecx (zero)
	je isDivisible # if equal jump to "isDivisible"

	jmp end
	
zero:
	movl $0, %eax # set eax to 0
	jmp end

isDivisible:
	movl $1, %eax # set eax to 1
	jmp end
	
end:
	ret
