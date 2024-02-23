.section .data
	.global ptrvec
	.global num
		
.section .text
	.global array_sort

array_sort:
	movq $0, %rdx
	movq $0, %rax
	movq $0, %rcx
	movq ptrvec(%rip), %rdi
	movq num(%rip), %rsi
	subq $1, %rsi
	
start:
	cmpq $-1, %rsi
	je end
	cmpq %rax, %rsi
	je end
	
	push %rax
	
	movq $0, %r8
	movq $1, %r9
	
inner_loop:
	
	movw (%rdi, %r8, 2), %dx
	movw (%rdi, %r9, 2), %cx
	
	cmpw %dx, %cx
	jle keep
	
	movw %cx, (%rdi, %r8, 2)
	movw %dx, (%rdi, %r9, 2)
	
keep:
	incq %r8
	incq %r9
	incq %rax
	cmpq %rax, %rsi
	jne inner_loop
	
	pop %rax
	
	incq %rax
	
	jmp start
	
end:
	ret
