/***********************asm.s***********************/
.section .data
	.global op1, op2, op3, op4
	op3:
		.quad 0
	op4:
		.quad 0
	
.section .text
	.global sum_v3 		   #void sum_v3(void)

sum_v3:
	movq op3(%rip), %rcx   #place op3 in rcx
	movq op4(%rip), %rax   #place op4 in rax
	addq %rcx, %rax 	   #add op3 to op4
	
	movslq op2(%rip), %rcx #place op2 in rcx
	subq %rcx, %rax 	   #sub op2 to op4
	subq %rcx, %rax 	   #sub op2 to op4
	
 	movslq op1(%rip), %rcx #place op1 in rcx
	addq %rcx, %rax 	   #add op1 to op4
	addq %rcx, %rax 	   #add op1 to op4
	
	ret
	
	
