/***********************asm.s***********************/
.section .data
	.global op1
	.global op2
	
.section .text
	.global test_flags                #void test_flags(void)

test_flags:
	movl op1(%rip), %eax              #place op1 in output
	movl op2(%rip), %ecx              #place op2 in ecx
	addl %ecx, %eax 	              #add op2 to op1
	
	jc carry_or_overflow_detected     #jump if carry
	jo carry_or_overflow_detected     #jump if overflow
	
	movl $0, %eax					  #place 0 in output
	
	jmp end						      #unconditional jump to end
	
carry_or_overflow_detected:
	movl $1, %eax					  #place 1 in output

end:
	ret
	
	
