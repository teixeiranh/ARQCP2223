.section .data
	.global ptrvec
	.global num
		
.section .text
	.global vec_greater10

vec_greater10:
	movl $0, %eax
	movl $0, %ecx
	movq ptrvec(%rip), %rdi
	movl num(%rip), %esi
	
loop_vec:
	cmpl $0, %esi
	je end
	
	movl (%rdi), %ecx
	
	cmpl $10, %ecx
	jng not_greater
	
	incl %eax
	
not_greater:
	addq $4, %rdi
	decl %esi
	jmp loop_vec
	
end:
	ret
