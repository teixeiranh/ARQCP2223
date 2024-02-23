/***********************asm.s***********************/
.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global sum_and_subtract  #void sum_and_subtract(void)

sum_and_subtract:
	movsbq C(%rip), %rax      #place C in rcx
	
	movslq A(%rip), %rcx      #place A in rax
	addq %rcx, %rax 	      #add A to C
	
	movsbq D(%rip), %rcx      #place D in rcx
	subq %rcx, %rax 	      #sub D to C
	
 	movswq B(%rip), %rcx      #place B in rcx
	addq %rcx, %rax 	      #add B to C
	
	ret
	
	
