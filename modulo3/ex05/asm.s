# Initialized data-------------------------------------------------
.section .data
	.global ptrvec
	.global num

# Coding instructions----------------------------------------------
.section .text
	.global vec_sum

vec_sum:

	pushq %rbx

	movq $0, %rax # moves 0 to rax
	movq $0, %rcx # moves 0 to rcx

	movq ptrvec(%rip), %rsi # moves ptrvec to rsi
	movw num(%rip), %bx # moves the short value num to ebx
	movl $0, %eax # moves 0 to eax
	movl $0, %edx # moves 0 to edx
	cmpw $0, %bx # moves 0 to ebx
	je end

sum:

	movq (%rsi), %rcx  # moves he value rsi to ecx
	addq %rcx, %rax # add ecx to eax
	subw $1, %bx # subtracts 1 to bx
	addq $8, %rsi # gets the next value pointed by rsi
	cmpw $0, %bx # check if finished the arrya
	je end
	jmp sum

end:

	popq %rbx
	ret
