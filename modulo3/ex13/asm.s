.section .data
	.global ptrvec
	.global num
		
.section .text
	.global keep_positives

keep_positives:
	movw $0, %cx
	movw $0, %dx
	movq ptrvec(%rip), %rdi
	movw num(%rip), %si
	
loop_vec:
	cmpw %dx, %si
	je end
	
	movw (%rdi), %cx
	
	cmpw $0, %cx
	jge positive
	
	movw %dx, (%rdi)
	
positive:
	addq $2, %rdi
	incw %dx
	jmp loop_vec
	
end:
	ret
