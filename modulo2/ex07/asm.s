# Initialized data-------------------------------------------------
.section .data
#	.global s # used in swapBytes
#	.global byte1 # used in concatBytes
#	.global byte2 # used in concatBytes
	.global s1
	.global s2

# Coding instructions-------------------------------------------------
.section .text
#	.global swapBytes # short int swapBytes(void)
#	.global concatBytes # short int concatBytes(void)
	.global crossSumBytes # short int crossSumBytes

# swapBytes------------------------------------------------
# swapBytes:
# 	movw s(%rip), %ax # move value of x from memory to ax
# 	movb %al , %cl # move the value of al to cl
# 	movb %ah , %ch # move the value of ah to ch
# 	movb %cl, %ah # move valor de cl para ah
# 	addb %ch,%ch # doubles the values at ch
# 	movb %ch, %al # move valor de ch to al
# 	ret

# concatBytes----------------------------------------------
# concatBytes:
#	movb byte1(%rip),%al # move the byte value from byte1 to al
#	movb byte2(%rip),%ah # move the byte value from byte1 to al
#	ret

# crossSumBytes-------------------------------------------------
crossSumBytes:
	movw s1(%rip), %ax # move s1 to ax
	movw s2(%rip), %cx # move s2 to cx
	
	addb %ch, %al # adds the most significant byte of cx to the least significant of ax 
	addb %cl, %ah  # adds the least significant byte of cx to the most significant of ax 

	ret
