.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_add_two

vec_add_two:
	movq $0, %rsi
	movq $0, %rcx
	movq $0, %rdx
	movq ptrvec(%rip), %rsi
	movq num(%rip), %rcx
	
int_loop:
	cmpq $0, %rcx
	je end
	addl $2, (%rsi)
	addq $4, %rsi
	decq %rcx
	jmp int_loop
	
end:
	ret
