.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_sum_even

vec_sum_even:
	movq $0, %rax
	movq num(%rip), %rdi
	movq ptrvec(%rip), %rsi

long_loop:
	cmpq $0, %rdi
	je end
	
	movq (%rsi), %r8
	movq %r8, even(%rip)
	
	push %rax
	
	call test_even
	
	cmpq $0, %rax
	pop %rax
	je increment
	
	addq %r8, %rax
	
increment:
	addq $8, %rsi
	decq %rdi
	jmp long_loop
	
end:
	ret
