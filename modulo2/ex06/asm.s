# Initialized data
.section .data
#	.global s # used in swapBytes
	.global byte1 # used in concatBytes
	.global byte2 # used in concatBytes

# Coding instructions
.section .text
#	.global swapBytes # short int swapBytes(void)
	.global concatBytes # short int concatBytes(void)

# swapBytes
# swapBytes:
# 	movw s(%rip), %ax # move value of x from memory to ax
# 	movb %al , %cl # move the value of al to cl
# 	movb %ah , %ch # move the value of ah to ch
# 	movb %cl, %ah # move valor de cl para ah
# 	addb %ch,%ch # doubles the values at ch
# 	movb %ch, %al # move valor de ch to al
# 	ret

# concatBytes
concatBytes:
	movb byte1(%rip),%al # move the byte value from byte1 to al
	movb byte2(%rip),%ah # move the byte value from byte1 to al
	ret

