/***********************asm.s***********************/
.section .data
	.global op1
	.global op2
	.equ CONST, 20
	
.section .text
	.global sum_v2 		 # void sum_v2(void)

sum_v2:
	movl $CONST, %eax 	 #place CONST in eax
	movl op1(%rip), %ecx #place op1 in ecx
	movl op2(%rip), %edx #place op2 in edx
	subl %ecx, %eax 	 #sub ecx to eax. Result is in eax
	subl %ecx, %eax 	 #sub ecx to eax. Result is in eax
	addl %edx, %eax 	 #sub edx to eax. Result is in eax
	ret
	
	
