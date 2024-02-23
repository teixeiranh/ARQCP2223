# Initialized data-------------------------------------------------
.section .data
	
	.global ptrvec
	.global num
	
# Coding instructions----------------------------------------------	
.section .text
	
	.global count_max

count_max:
	
	pushq %rbx
	pushq %r12
	pushq %r13

	movq $0, %rax # return
	movq $0, %rbx
	movq $0, %rcx
	movq $0, %rsi
	movq $0, %r13
	movq $0, %rdi # position 0
	movq $0, %rdx # position 1
	movq $0, %r8 # position 2
	movl $3, %r12d

	movq ptrvec(%rip), %rdi # pointer0 in rdi
	movq ptrvec(%rip), %rdx # pointer1 in rdi
	addq $4, %rdx # get the position
	movq ptrvec(%rip), %r8 # pointer2 in rdi
	addq $8, %r8 # get the position
	movl num(%rip), %esi # size of array in esi

	cmpl $3,%esi # check minimum size
	jl small_array

loops:
	
	cmpl num(%rip),%r12d
	jg end

	movl (%rdi), %esi # position 0
	movl (%rdx), %ebx # position 1
	movl (%r8), %r13d # position 2
	cmpl %ebx, %esi # compare position 0 to 1
	jge increment # break if greater than or equal
	cmpl %r13d, %ebx # compare position 1 to position 2
	jle increment # break if lesse than or equal
	addl $1, %eax # if no breaks then increment value

increment:

	addl $1,%r12d # increment vector counter
	addq $4,%rdi # increment pointer counter
	addq $4,%rdx # increment pointer counter
	addq $4,%r8 # increment pointer counter
	jmp loops

small_array:

	movl $0, %eax # return 0
	jmp end	
	
end:

	popq %r13
	popq %r12
	popq %rbx
	ret
