# Initialized data-------------------------------------------------
.section .data				
	.global num	# int
	.global ptrsrc # short				
	.global ptrdest # short		
		
# Coding instructions----------------------------------------------
.section .text
	
	.global sort_array # void


sort_array:

	pushq %rbx
	pushq %rcx
	pushq %rdx

	movq $0, %rcx
	movq $0, %rdx

	movq ptrsrc(%rip), %rcx # mvoes ptrsc to rcx
	movq ptrsrc(%rip), %rdx	# mvoes ptrsc to rcx
	movl num(%rip), %edi # mvoes ptrsc to rcx
	movl num(%rip), %eax # mvoes ptrsc to rcx
	jmp sort # go to sort 

	decrease_elements:
	addq $2, %rcx # increments
	movq %rcx, %rdx # saves the value to rdx
	decl %edi # decrements
	cmpl $0, %edi # comapres
	je end_sort_array # go to end sort
	movl %edi, %eax
	
	sort:
	cmpl $0, %eax 
	je decrease_elements 

	movw (%rcx), %bx # moves
	movw (%rdx), %si # moves
	cmpw %bx, %si	# compares
	jl swap # 
	decl %eax # decrements
	addq $2, %rdx # 
	jmp sort # 
	
	swap:
	movw %si, (%rcx) # moves
	movw %bx, (%rdx) # moves
	decl %eax # 
	addq $2, %rdx # 
	jmp sort # goto
	
	end_sort_array:

	popq %rdx
	popq %rcx
	popq %rbx
	ret
