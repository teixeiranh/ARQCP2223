# Initialized data-------------------------------------------------
.section .data
	.global ptrvec
	.global num
	.global x

# Coding instructions----------------------------------------------
.section .text
	.global vec_search

vec_search:
	pushq %rbx 
	pushq %rcx 
	pushq %rdx 
	
	cmpl $0, num(%rip) # check if the array is null
	jne not_null # if not null then 

unexisting_value:

	movq $0, %rax # move 0 to rax
	jmp end_final # jump to end final

not_null:
	movq $0, %rax # move 0 to rax
	movq $0, %rbx # move 0 to rdx
	movq $0, %rcx # move 0 to rdx
	movq $0, %rdx # move 0 to rdx
	movl num(%rip), %esi
	movq ptrvec(%rip), %rdi # move the number of elements to rdi
#	movw x(%rip), %bx # value to be found

find:

	movw (%rdi), %dx # moves the current array value to dx
	cmpw x(%rip), %dx # compares dx to cx
	je end # if equal jump to end

	decl %esi
	cmpl $0, %esi # 
	je unexisting_value # if equal go to 

	addq $2, %rdi
	jmp find 

end:
	movq %rdi, %rax # move the pointer to rdx

end_final: 

	popq %rdx
	popq %rbx
	popq %rbx
	ret # return
