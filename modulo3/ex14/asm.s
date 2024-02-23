# Initialized data-------------------------------------------------
.section .data
	.global ptrvec
	.global num

# Coding instructions----------------------------------------------
.section .text
	.global vec_diff

vec_diff:
	
	pushq %rbx

	movl $0, %eax
	movl $0, %edx
	movl $0, %esi
	movl $0, %ebx
	movq $0, %rcx 
	movq $0, %r8 
	movq ptrvec(%rip), %rcx

looping:

	cmpl num(%rip), %edx # check if at the end
	je end

	movl (%rcx), %esi
	movl %esi, x(%rip)
	
	pushq %rdx
	pushq %rcx
	call exists # verify if is duplicate
	popq %rcx
	popq %rdx

	cmpl $0, %eax # compare with 0
	je not_duplicate # go to not duplicate

	incl %edx # increment counter of elements traversed
	addq $4, %rcx # increment pointer
	jmp looping

not_duplicate:
	
	incl %ebx # increment counter of unique values
	incl %edx # increment counter of elements traversed
	addq $4, %rcx # increment pointer
	jmp looping

end:
	movl %ebx, %eax # move the number of unique values to return
	popq %rbx
	
	ret
