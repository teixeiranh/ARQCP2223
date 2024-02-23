.section .data
	.global ptrgrades
	.global ptrfreq
	.global num
		
.section .text
	.global frequencies

frequencies:
	movq ptrgrades(%rip), %rsi
	movq ptrfreq(%rip), %rdi
	movl num(%rip), %eax
	movq $0, %r8
	movq $0, %r9
	movl $21, %edx
	
freq_loop:
	cmpl $0, %edx
	je grades_loop
	
	movl $0, (%rdi, %r8, 4)
	
	incq %r8
	decl %edx
	
	jmp freq_loop
	
grades_loop:
	cmpl $0, %eax
	je end
	
	movb (%rsi, %r9, 1), %dl
	incl (%rdi, %rdx, 4)
	
	incq %r9
	decl %eax
	
	jmp grades_loop

end:
	ret
