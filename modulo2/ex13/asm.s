/***********************asm.s***********************/
.section .data
	.global length1
	.global length2
	.global height
	
.section .text
	.global getArea                #void getArea(void)

getArea:
	movl length1(%rip), %eax       #place length1 in output
	movl length2(%rip), %ecx       #place length2 in ecx
	addl %ecx, %eax 	           #add length2 to length1
	
	movl height(%rip), %ecx 	   #place height in ecx
	imull %ecx					   #mul output by height
	
	movl $2, %ecx				   #place 2 in cdq
	cdq							   #sign extend long
	idivl %ecx					   #div output by 2

	ret
	
	
