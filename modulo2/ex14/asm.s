# Initialized data-------------------------------------------------
.section .data
	length1:
		.int 0
	length2:
		.int 0
	height:
		.int 0

	.global length1
	.global length2
	.global height

# Coding instructions-------------------------------------------------
.section .text
    .global getArea

getArea:
    
	movl length1(%rip),%eax # move length1 value to eax
	addl length2(%rip),%eax # add the value of length2 value to eax
	movl height(%rip),%ecx # move height value to ecx 

	mull %ecx # perform the multiplication of the value of eax and ecx and store it in ecx

	movl $2,%ecx # move the value 2 to ecx

	divl %ecx # perform the division of ecx and the value 2
  
	ret # return the value
