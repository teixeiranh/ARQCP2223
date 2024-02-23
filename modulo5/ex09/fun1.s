# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ SB_SA_SHORTX_OFFSET, 4		
	
# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global fun1

# Function -------------------------------------------------------------------------------------------------------------

fun1:
	pushq 	%rbp 		# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 	# copies the stack pointer rsp to rbp
	pushq 	%rbx
	movq $0, %rax
	
	movw SB_SA_SHORTX_OFFSET(%rdi), %ax # set structA.x to output
	
end:
	popq 	%rbx
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 	# copies to rsp the value at the beginning of the function
	popq 	%rbp 		# puts the caller value back to rbp
	ret
