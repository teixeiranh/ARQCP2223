.section .data	

.section .text
    .global proc

proc:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	movl %edx, %eax						# x2 para eax
	addl %edi, %eax						# x1 + x2 para eax
	movl %eax, (%rsi) 					# *p1 = x1 + x2
	
	movl %edx, %eax						# x2 para eax
	subl %edi, %eax						# x2 - x1 para eax
	movl %eax, (%rcx)					# *p2 = x2 - x1
	
	movswl %r8w, %eax					# x3 para eax
	addl %edx, %eax						# x3 + x2
	movw %ax, (%r9)						# *p3 = x3 + x2
	
	movsbw 16(%rbp), %ax				# x4 para ax
	imulw $3, %ax						# 3 * x4
	movq 24(%rbp), %r8  				# *p4
	movb %al, (%r8)						# *p4 = 3 * x4
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
