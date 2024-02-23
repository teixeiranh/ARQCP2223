# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ STUDENT_NUMBER_OFFSET, 0		# short number; - 2 bytes
	.equ STUDENT_AGE_OFFSET, 2 			# char age; - 1 byte
	.equ STUDENT_GRADES_OFFSET, 4		# int grades[5]; - 5 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 24		# char name[60]; - 60 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 84		# char address[100]; - 100 x 1 byte
	.equ DATA_SIZE, 184					# total
	
	.equ ARRAY_OF_GRADES_SIZE, 5

# Coding instructions-----------------------------------------------------------
.section .text
	.global locate_greater

# Function ---------------------------------------------------------------------
# int locate_greater(Student *s, int minimum, int *greater_grades);
# &s in %rdi, int in %rsi, &greater_grades in %rdx
locate_greater:

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

	pushq	%rbx

	movq 	$0, %rax 	# set register to 0
	movq 	$0, %rcx 	# set register to 0
	movq 	$0, %r8 	# set counter to 0
	movq 	$0, %r9 	# set counter to 0
	movq 	$0, %rbx 	# set counter to 0

iterate:
	cmpq 	$ARRAY_OF_GRADES_SIZE, %r8 				# compare the size of the array with the counter
	jge 	end

	movl 	STUDENT_GRADES_OFFSET(%rdi,%r8,4), %ecx # move the "offseted" value to %eax taken from %rsi
	cmpl 	%esi, %ecx
	jg 	greater_found
	incq 	%r8 			# increment the counter
	jmp 	iterate

greater_found:
	movl 	%ecx, %ebx
	movl 	%ecx, (%rdx,%r9,4) 	# move %eax to the offset location of the structure
	incq 	%rax
	incq 	%r8 				# increment the counter
	incq 	%r9
	jmp 	iterate

end:

	popq %rbx
	# epilogue -----------------------------------------------------------------
	movq 	%rbp, %rsp 			# copies to rsp the value at the beginning of the function
	popq 	%rbp 				# puts the caller value back to rbp

	ret
