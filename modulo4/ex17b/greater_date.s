.section .data
		
.section .text
    .global greater_date

greater_date:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	push %rdi							# saves date1
	
	movl $0x000000FF, %edx				# month mask
	and %edi, %edx						# filters month to edx
	
	shr $8, %edi						# shifts to year
		
	movl $0x0000FFFF, %ecx				# year mask
	and %edi, %ecx						# filters year to ecx
		
	shr $16, %edi						# shifts to day
	
	shl $16, %ecx						# positions day
	shl $8, %edx						# positions month
	
	or %ecx, %edx						# concatenates year + month	
	or %edi, %edx 						# concatenates (year + month) + day	
	movl %edx, %r9d						# stores ordered date1 into r9d
	
	push %rsi							# saves date2
	
	movl $0x000000FF, %edx				# same procedure as date1 for date2
	and %esi, %edx	
	
	shr $8, %esi						
	
	movl $0x0000FFFF, %ecx				
	and %esi, %ecx						
	
	shr $16, %esi						
	
	shl $16, %ecx						
	shl $8, %edx						
		
	or %ecx, %edx
	or %esi, %edx						# stores ordered date2 in edx
	
	
	pop %rsi							# retrieves date1 in original format		
	pop %rdi							# retrieves date2 in original format
	cmpl %edx, %r9d						# checks if date1 is greater than date2
	jg date1							# jmps to date1 if true
	
	movl %esi, %eax						# assigns date2 to output
	jmp end
	
date1:
	movl %edi, %eax						# assigns date1 to output
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret

