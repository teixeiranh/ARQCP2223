.section .data
		
.section .text
    .global activate_bits

activate_bits:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	movl $0, %eax						# creates mask with 32 bits
	movl $0, %ecx						# creates counter
	
bits_loop:
	cmpl $32, %ecx						# checks if counter is out of the 32 bit mask
	je end								# jumps to end if true
				
	shl $1, %eax						# shifts the mask 1 bit to the left
	
	cmp %esi, %ecx						# checks if current bit is left of esi 
	jg activate							# activates bit if true
	cmp %edx, %ecx						# checks if current bit is right of edx
	jl activate							# activates bit if true
	
increment:	
	incl %ecx							# increments counter by 1
	jmp bits_loop
	
activate:
	incl %eax							# activates current bit of the mask
	jmp increment
	
end:
	movl %edi, %edx						# moves integer "a" to edx	
	or %edx, %eax						# all the activated bits in the mask are activated in "a"
	
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret
