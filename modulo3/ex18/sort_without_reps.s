# Initialized data-------------------------------------------------
.section .data
	x: 
		.int 0 # variable xx to be used in exists_in_array
	
	num_ptrdest:
		.int 0 # variable to be used in exists_in_array
	
	.global num_ptrdest # int
	.global x # int					
	.global num	# int
	.global ptrsrc # short				
	.global ptrdest # short		
		
# Coding instructions----------------------------------------------
.section .text
	
	.global sort_without_reps # int

sort_without_reps:

	pushq %rbx

	movl $0, %edi # elements traversed
	movl num(%rip), %esi # moves num to esi
	
	cmpl $0, %esi # checks if the array is null
	je end # end
	
	pushq %rdi
	pushq %rsi
	pushq %rdx
	pushq %rcx
	pushq %r8
	pushq %r9
	# --------------------------
	call sort_array
	# --------------------------
	popq %r9
	popq %r8
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi

	movq ptrsrc(%rip), %rcx # copies ptrsrc to rcx
	movq ptrdest(%rip), %rdx # copies ptrdest to rdx
	
	movw (%rcx), %bx # moves the value pointed to bx
	movw %bx, (%rdx) # moves the value at bx to the pointed at rdx
	decl %esi # decrements esi, wich stores the remaining elements to traverse
	addl $1, %edi # increments the number of elements traversed
	addq $2, %rcx # traverse to the next element of rcx
	addq $2, %rdx # traverse to the next element of rdx
	
next:
	cmpl $0, %esi # verifies if the src array is fully traversed
	je end # jump to end
	
	movw (%rcx), %bx # moves the current pointed value to bx
	movw %bx, x(%rip) # moves the value in bx to so that the function exists requires this argument
	movl %edi, num_ptrdest(%rip)	# moves the value at edi because exists requires this information to know the quantaty of elements
	
	
	pushq %rdx # saves %edx
	pushq %rcx # saves %ecx
	
	# ----------------------
	call existing_value
	# ----------------------
	
	popq %rcx # 
	popq %rdx # 
	
	cmpl $1, %eax # compares the return value of exists_in_array
	je increment_and_next
	movw (%rcx), %bx	
	movw %bx, (%rdx)	
	decl %esi			
	addl $1, %edi # increments the number of elements traversed
	addq $2, %rcx # traverse to the next element of rcx
	addq $2, %rdx # traverse to the next element of rdx
	jmp next
	
increment_and_next:
	decl %esi
	addq $2, %rcx
	jmp next
	
end:
	movl %edi, %eax	# sets the returned value
	popq %rbx
	ret
