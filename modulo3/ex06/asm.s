.section .data
	.global ptr1
	
.section .text
	.global encrypt

encrypt:
	movl $0, %eax
	movq $0, %rsi
	movq ptr1(%rip), %rsi

string_loop:
	movb (%rsi), %cl
	
	cmp $0, %cl
	je end
	
	cmp $32, %cl
	je inc
	
	cmp $97, %cl
	je inc
	
	addb $3, (%rsi)
	incl %eax
	
inc:
	incq %rsi
	
	jmp string_loop
	
end:
	
	ret
