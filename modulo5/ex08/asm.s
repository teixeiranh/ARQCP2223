# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ S2_CHAR_OFFSET, 0		# char c[3]; - 3 x 1 bytes
	.equ S2_SHORT_OFFSET, 4 	# short w[3]; - 2 x 3 byte
	.equ S2_INT_OFFSET, 12		# int j; - 4 bytes
	.equ DATA_SIZE, 18			# total

	.equ SIZE_OF_ARRAYS, 3		# size of arrays

# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global fill_s2

# Function -------------------------------------------------------------------------------------------------------------
# void fill_s2(s2 *s, short vw[3], int vj, char vc[3]);
# &s in %rdi, vw in %rsi, vj in %rdx, vc in %rcx
fill_s2:

	# Function Arguments -------------------------------------------------------
	# 		1		2		3		4		5		6		
	# 64	%rdi	%rsi	%rdx	%rcx	%r8		%r9		%rax		%rbx
	# 32	%edi	%esi	%edx	%ecx	%r8d	%r9d	%eax		%ebx
	# 16	%di		%si		%dx		%cx		%r8w	%r9w	%ax			%bx	
	# 8		%dil	%sil	%dh-dl	%ch-cl	%r8b	%r9b	%%ah-al		%bh-%bl
	# --------------------------------------------------------------------------
	# calle-saved	%rbx 	%r12	%r13	%r14	%r15
	
	# prologue -----------------------------------------------------------------
	pushq 	%rbp 		# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 	# copies the stack pointer rsp to rbp

	pushq 	%rbx

	movq 	$0, %rbx 								# set register to 0
	movq 	$0, %rax 								# set register to 0
	movq 	$0, %r8 								# set counter to 0

	movl 	%edx, S2_INT_OFFSET(%rdi)				# move the integer to its place							

iterate:
	cmpq	$SIZE_OF_ARRAYS, %r8					# compare the counter with the size of the arrays	
	jge		end
	
	movb 	(%rcx,%r8,1), %bl						# move "offseted" char in %rcx to %bl
	movb 	%bl, S2_CHAR_OFFSET(%rdi,%r8,1)			# move value in %bl to the proper place in the struct
	movw	(%rsi,%r8,2), %ax						# move the "offseted" short in %rsi to %ax
	movw	%ax, S2_SHORT_OFFSET(%rdi,%r8,2)		# move the value in %ax to the proper place in the struct
	incq	%r8										# increment the counter
	jmp 	iterate									# go back up to "iterate"

end:
	popq 	%rbx

	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 	# copies to rsp the value at the beginning of the function
	popq 	%rbp 		# puts the caller value back to rbp

	ret
