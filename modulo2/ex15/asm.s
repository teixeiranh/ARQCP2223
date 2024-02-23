/***********************asm.s***********************/
.section .data
	.global A
	.global B
	.global C
	.global D
		
.section .text
	.global compute       #void compute(void)

compute:
	movl D(%rip), %eax    #move D to output
	cmpl $0, %eax   	  #compare D to 0
	je end                #jump to end if equal
	
	movl A(%rip), %eax    #move A to output
	movl B(%rip), %ecx    #move B to ecx
	imull %ecx, %eax      #mul output to B 		
	
	movl C(%rip), %ecx    #move C to ecx
	subl %ecx, %eax 	  #sub output by C
	
	movl D(%rip), %ecx    #move D to ecx
	cltd 				  #sign-extends eax into edx:eax
	idivl %ecx			  #div output by D
	
end:
	ret
