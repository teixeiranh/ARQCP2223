.section .data
	.global ptr1
	.global ptr2
	.global ptr3
	
.section .text
	.global str_cat

str_cat:
	movq $0, %rcx
	movq ptr1(%rip), %rdi
	movq ptr3(%rip), %rdx
	movq ptr2(%rip), %rsi
	
loop_vec1:
	cmpb $0, (%rdi)
	je loop_vec2
	
	movb (%rdi), %cl
	movb %cl, (%rdx)
	
	incq %rdi
	incq %rdx
	jmp loop_vec1
	
loop_vec2:
	cmpb $0, (%rsi)
	je end
	
	movb (%rsi), %cl
	movb %cl, (%rdx)
	
	incq %rsi
	incq %rdx
	jmp loop_vec2
	
end:
	movb $0, (%rdx)
	ret
