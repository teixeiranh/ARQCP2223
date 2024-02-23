# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ SB_SA_SHORTX_OFFSET, 4	
	.equ SB_SA_PTRB_OFFSET, 8		
	
# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global count_odd_matrix

# Function -------------------------------------------------------------------------------------------------------------
count_odd_matrix:
	# m in rdi, y in rsi, k in rdx
	# prologue -----------------------------------------------------------------
	pushq 	%rbp 		# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 	# copies the stack pointer rsp to rbp
	
	
	pushq 	%rbx
	pushq 	%r12

	movq $0, %rax							# set output to 0
	movq $-1, %r8
	
loop_rows:
	incq %r8
	cmp %r8, %rsi
	je end
	
	movq (%rdi ,%r8, 8), %r9
	movq $0, %rcx
	loop_cols:
		cmp %rcx, %rdx
		je loop_rows
		movl (%r9 ,%rcx ,4), %r12d
		incq %rcx
		andl $1, %r12d
		cmpl $1, %r12d
		je odd
		jmp loop_cols

odd: 
	incl %eax
	jmp loop_cols
   
end:
	popq 	%r12
	popq 	%rbx
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 	# copies to rsp the value at the beginning of the function
	popq 	%rbp 		# puts the caller value back to rbp
	ret
