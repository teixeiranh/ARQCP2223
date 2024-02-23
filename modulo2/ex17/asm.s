/***********************asm.s***********************/
.section .data
	.global A, B, result
	
	result: 
		.long 0
		
.section .text
	.global sum            #void compute(void)
	.global subtraction
	.global multiplication
	.global division
	.global modulus
	.global power2
	.global power3
	
sum:
	movl A(%rip), %eax    # places A in output
	addl B(%rip), %eax    # adds B to A
	ret

subtraction: 
	movl A(%rip), %eax    #places A in output
	subl B(%rip), %eax    #sub B to A  		
	ret

multiplication: 
	movl A(%rip), %eax    #places A in output
	imull B(%rip), %eax   #mul A by B		
	ret

division: 
	movl A(%rip), %eax    #places A in output
	cdq					  #extends-sign 
	idivl B(%rip), %eax   #div A by B 		
	ret

modulus:
	movl A(%rip), %eax    #places A in output
	cdq					  #extends-sign 
	idivl B(%rip), %eax   #div A by B 	
	movl %edx, %eax		  #places remainder in output 
	ret

power2:
	movl A(%rip), %eax    #places A in output
	imull B(%rip), %eax   #mul A by B		
	ret

power3:
	movl A(%rip), %eax    #places A in output
	imull B(%rip), %eax   #mul A by B		
	imull B(%rip), %eax   #mul A by B	
	ret
