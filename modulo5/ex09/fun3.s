# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ SB_SHORTZ_OFFSET, 20
	
# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global fun3

# Function -------------------------------------------------------------------------------------------------------------

fun3:
	# prologue -----------------------------------------------------------------
	pushq 	%rbp 		# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 	# copies the stack pointer rsp to rbp

	# function body ------------------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq 	%rbx
	movq $0, %rax							# set output to 0

	leaq SB_SHORTZ_OFFSET(%rdi), %rax  		# load z address to rax
	
end:
	popq 	%rbx
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 	# copies to rsp the value at the beginning of the function
	popq 	%rbp 		# puts the caller value back to rbp
	ret
