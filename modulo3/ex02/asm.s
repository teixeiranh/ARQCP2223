.section .data
	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto

str_copy_porto:
	movq ptr1(%rip), %rsi
	movq ptr2(%rip), %rdi
	movq $0, %rax
	
str_loop:
	movb (%rsi), %cl
	
	cmpb $111, %cl
	je str_replace
	
	movb %cl, (%rdi)
	
	jmp increase_pointer
	
str_replace:
	movb $117, (%rdi) 

increase_pointer:
	cmpb $0, %cl 
	jz end
	
	incq %rax
	incq %rsi
	incq %rdi
	
	jmp str_loop

end:
	ret
