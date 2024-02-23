.section .data
	.global ptrvec
	.global num
		
.section .text
	.global sum_first_byte

sum_first_byte:
	movq $0, %rax
	movq ptrvec(%rip), %rdi
	movl num(%rip), %esi
	
loop_vec:
	cmpl $0, %esi
	je end
	
	movb (%rdi), %cl
	movsbq %cl, %rcx
	addq %rcx, %rax
	
	addq $8, %rdi
	decl %esi
	jmp loop_vec
	
end:
	ret
