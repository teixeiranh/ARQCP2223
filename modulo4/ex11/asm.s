.section .data
		
.section .text
    .global call_proc

call_proc:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	subq $32, %rsp						# alocar espaço na stack				
	movl %edi, -8(%rbp)					# a int para a stack 
	movl %esi, -16(%rbp)					# b int para a stack
	movw %dx, -24(%rbp)					# c word para a stack
	movb %cl, -32(%rbp)					# d byte para a stack
	
	movl -8(%rbp), %edi					# a para edi
	leaq -8(%rbp), %rsi					# pointer do a para rsi
	
	movl -16(%rbp), %edx					# b para edx
	leaq -16(%rbp), %rcx					# pointer do b para rcx
	
	movw -24(%rbp), %r8w				# c para r8w
	leaq -24(%rbp), %r9					# pointer do c para r9
	
	leaq -32(%rbp), %r10 				# pointer de d em rbx
	movb -32(%rbp), %r11b  				# alocar d na stack
	
	push %r10							# oitavo arg na stack
	push %r11							# setimo arg na stack
	
	call proc							# call proc
	
	addq $16, %rsp						# limpar a stack das variaveis alocadas
	
	movl -8(%rbp), %eax					# x1 
    addl -16(%rbp), %eax					# x1 + x2
    movswl -24(%rbp), %edx				# x3
    movsbl -32(%rbp), %ecx				# x4
    
	subl %ecx, %edx						# x3 - x4 					
		
	imull %edx, %eax					# (x1 + x2) * (x3 - x4)
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
