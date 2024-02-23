# Initialized data-------------------------------------------------
.section .data
	s1:
		.short 11
	s2:
		.short 22

	.global s1
	.global s2

# Coding instructions-------------------------------------------------
.section .text
	.global crossSumBytes # short int crossSumBytes

# crossSumBytes-------------------------------------------------
crossSumBytes:
	movw s1(%rip), %ax # move s1 to ax
	movw s2(%rip), %cx # move s2 to cx
	
	addb %ch, %al # adds the most significant byte of cx to the least significant of ax 
	addb %cl, %ah  # adds the least significant byte of cx to the most significant of ax 

	ret
