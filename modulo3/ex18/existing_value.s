# Initialized data-------------------------------------------------
.section .data
	
	.global num_ptrdest # int
	.global x # int					
	.global num	# int
	.global ptrsrc # short				
	.global ptrdest # short		
		
# Coding instructions----------------------------------------------
.section .text
	
	.global existing_value # int

existing_value:

	pushq %rbx
	pushq %rcx
	pushq %rdx
	pushq %rsi

	
	movq $0, %rax # move 0 to rax
	movq $0, %rcx # move 0 to rcx
	movq $0, %rdx # move 0 to rdx
	movw x(%rip), %si # move the x value to si
	movl num_ptrdest(%rip), %edx # moves number of elements in the destination array to edx
	movq ptrdest(%rip), %rbx # moves ptrdest to rbx
	
	check:
	
	cmpl $0, %edx # ccheck if all elements traversed
	je end_exists_in_array # caso %edx seja igual a 0 salta para end_exists_in_array
	
	cmpw (%rbx), %si # compara %ecx (x) com %esi
	je x_exists
	addq $2, %rbx # increment
	decl %edx # ddecrement
	jmp check # go back to check
	
	x_exists:
	movl $1, %eax # mete %eax igual a 1 pois o valor de x já existe no array de destino
	jmp end_exists_in_array # salta para end_exists_in_array
	
	end_exists_in_array:
	
	popq %rsi
	popq %rdx    
	popq %rcx    
	popq %rbx    
	ret
