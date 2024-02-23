# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ A_OFFSET, 			0		# short int a[3]
	.equ B_OFFSET, 			6		# char b
	.equ C_OFFSET, 			8		# long long int c
	.equ D_OFFSET, 			16		# short d
	.equ E_OFFSET, 			18		# char e
	.equ UB_OFFSET, 		24
	.equ DATA_SIZE,			32			

# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global return_unionB_b

# Function -------------------------------------------------------------------------------------------------------------
# char return_unionB_b(structA **matrix, int i, int j
# &matrix in %rdi, i in %rsi, int j in %rdx
return_unionB_b:

	# Function Arguments -------------------------------------------------------
	# 		1		2		3		4		5		6		
	# 64(q)	%rdi	%rsi	%rdx	%rcx	%r8		%r9		%rax		%rbx
	# 32(l)	%edi	%esi	%edx	%ecx	%r8d	%r9d	%eax		%ebx
	# 16(w)	%di		%si		%dx		%cx		%r8w	%r9w	%ax			%bx	
	# 8(b)	%dil	%sil	%dh-dl	%ch-cl	%r8b	%r9b	%%ah-al		%bh-%bl
	# --------------------------------------------------------------------------
	# calle-saved	%rbx 	%r12	%r13	%r14	%r15

	# prologue -----------------------------------------------------------------
	pushq 	%rbp 						# saves to the stack the rbp value from the caller
	movq	%rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	pushq	%rbx						# calle-save convention

	movq	$0, %rax

	movq 	(%rdi ,%rsi ,8), %rbx		# get the address of the line i and stores in %rbx
	imulq	$DATA_SIZE, %rdx			# scale the argument (for the column number) by 32 (size of the structure)
	leaq 	(%rbx ,%rdx ,1), %rcx		# store the address of the element m[i][j] in %rcx
	movb	UB_OFFSET(%rcx), %al		# offset the pointer for the structure in %rcx to find the value in the union

end:
	popq	%rbx
	
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp        			# puts in rsp the value that was in the begining of this function
	popq 	%rbp		       			# restores the value in rbp 
	ret
