# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ S1_CHARVC_OFFSET, 0		# char vc; - 1 byte
	.equ S1_INTVI_OFFSET, 4 		# int vi; - 4 bytes
	.equ S1_CHARVD_OFFSET, 8		# char vd; - 1 byte	
	.equ S1_INTVJ_OFFSET, 12		# int vj; - 4 bytes
	
# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global fill_s1

# Function -------------------------------------------------------------------------------------------------------------
# void fill_s1(s1 *s, int vi, char vc, int vj, char vd)
# &s in %rdi, vi in %esi, vc in %dl, vj in %ecx, vd in %r8b
fill_s1:

	# prologue -----------------------------------------------------------------
	pushq 	%rbp 		# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 	# copies the stack pointer rsp to rbp

	# function body ------------------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq 	%rbx
	
	movq 	$0, %rbx 								# set register to 0
	movq 	$0, %rax 								# set register to 0

	movb 	%dl, S1_CHARVC_OFFSET(%rdi)				# move vc to its place							
	movl    %esi, S1_INTVI_OFFSET(%rdi)				# move vi to its place	
	movb    %r8b, S1_CHARVD_OFFSET(%rdi)			# move vd to its place
	movl    %ecx, S1_INTVJ_OFFSET(%rdi)				# move vj to its place

end:
	popq 	%rbx
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 	# copies to rsp the value at the beginning of the function
	popq 	%rbp 		# puts the caller value back to rbp
	ret
