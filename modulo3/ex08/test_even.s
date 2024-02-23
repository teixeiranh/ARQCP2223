.section .data
	.global even
	
.section .text
	.global test_even

test_even:
	movq $0, %rdx
	movq even(%rip), %rax
	movq $2, %r9
	
	divq %r9
	
	cmp $0, %rdx
	je is_even
	
	movq $0, %rax

	jmp end

is_even:
	movq $1, %rax
	
end:
	ret
