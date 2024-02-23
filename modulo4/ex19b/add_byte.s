.section .data
		
.section .text
    .global add_byte

add_byte:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	movl (%rsi), %eax					# moves content of first position of vec1 to eax - vec size is in this position
	movl %eax, (%rdx)					# moves content of first position of vec1 to content of first position of vec2					
	addq $4, %rsi						# goes to second position of vec1
	addq $4, %rdx						# goes to second position of vec2				
		
loop:
	cmpl $0, %eax						# checks if counter is consumed
	je end								# if so ends	
	
	movl (%rsi), %ecx					# moves content of current vec1 position to ecx
	
	addb %dil, %cl						# adds char x to first byte of ecx (cl)
	movsbl %cl, %ecx					# extends char to long cl - ecx
	
	movl (%rsi), %r9d					# moves content of current vec1 position to r9d
	and $0xFFFFFF00, %r9d				# masks to extract the three remaining bytes
	
	or %r9d, %ecx						# concatenates the three bytes with the first added byte
	
	movl %ecx, (%rdx)					# stores the concatenated long to the current vec2 position
	
	decl %eax							# decrements counter
	addq $4, %rsi						# goes to next position of vec1
	addq $4, %rdx						# goes to next position of vec2
	jmp loop
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret

