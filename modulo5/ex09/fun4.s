# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ SB_SA_SHORTX_OFFSET, 4	
	.equ SB_SA_PTRB_OFFSET, 8		
	
# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global fun4

# Function -------------------------------------------------------------------------------------------------------------

fun4:
	# prologue -----------------------------------------------------------------
	pushq 	%rbp 		# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 	# copies the stack pointer rsp to rbp
	pushq 	%rbx
	movq $0, %rax							# set output to 0
		
	movq SB_SA_PTRB_OFFSET(%rdi), %rdx		# move pointer of structA in structB.b to rdx
	movw SB_SA_SHORTX_OFFSET(%rdx), %ax		# move structA.x to	output
	
end:
	popq 	%rbx
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 	# copies to rsp the value at the beginning of the function
	popq 	%rbp 		# puts the caller value back to rbp
	ret
