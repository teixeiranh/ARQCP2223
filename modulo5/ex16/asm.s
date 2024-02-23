# Initialized data------------------------------------------------------------------------------------------------------
.section .data
	
	# Constants definition
	.equ NUMBER_OFFSET, 		0		# short n_students; - 2 x 1 bytes
	.equ GRADES_OFFSET, 		8 		# unsigned short *individual_grades;
	.equ MINIMUM_MODULES,		10		# number of modules needed to be approved
	.equ MODULES,				16		# number of modules needed to be approved

# Coding instructions---------------------------------------------------------------------------------------------------
.section .text
	.global approved_semester

# Function -------------------------------------------------------------------------------------------------------------
# int approved_semester(group *g)
# &g in %rdi
approved_semester:

	# Function Arguments -------------------------------------------------------
	# 		1		2		3		4		5		6		
	# 64(q)	%rdi	%rsi	%rdx	%rcx	%r8		%r9		%rax		%rbx
	# 32(l)	%edi	%esi	%edx	%ecx	%r8d	%r9d	%eax		%ebx
	# 16(w)	%di		%si		%dx		%cx		%r8w	%r9w	%ax			%bx	
	# 8(b)	%dil	%sil	%dh-dl	%ch-cl	%r8b	%r9b	%%ah-al		%bh-%bl
	# --------------------------------------------------------------------------
	# calle-saved	%rbx 	%r12	%r13	%r14	%r15

	# prologue -----------------------------------------------------------------
	pushq 	%rbp 									# saves to the stack the rbp value from the caller
	movq 	%rsp, %rbp 								# copies the stack pointer rsp to rbp

	pushq	%r12
	pushq	%r13

	movl 	$0, %eax								# counter for students 
	movq 	$0, %r9									# counter for the number of students
	movq	GRADES_OFFSET(%rdi), %r12				# store grades reference in %r12 (dereference first array reference)
	
looping:
	movl 	$0, %esi								# module counter
	cmpw 	NUMBER_OFFSET(%rdi), %r9w				# verify index
	je 		end
	movw 	(%r12, %r9, 2), %r13w					# copies the content of each grade to r13w
	movl 	$0, %ecx								# j = 0
	movl 	$MODULES, %r8d							# 16bits of each word to r8d for initialize second loop
	jmp 	bits_evaluation

bits_evaluation:
	cmpl 	%ecx, %r8d								# check if all modules where analysed
	je 		check_if_approved						# if all analysed, go check if approved 
	pushq 	%r13									# save the value of grades on the stack
	andw 	$1, %r13w								# individual_grades[i] & 1
	cmpw 	$1, %r13w								# individual_grades[i] == 1?
	jne 	different_bits							# bit = 1 ?
	popq 	%r13									# pop back the value of grades
	incl 	%ecx									# j++	
	shrw 	$1, %r13w								# individual_grades[i] << 1	
	incl 	%esi									# module ++ if equals
	jmp 	bits_evaluation				

different_bits:
	popq 	%r13
	incl 	%ecx								# j++
	shrw 	$1, %r13w							# individual_grades[i] << 1	
	jmp 	bits_evaluation

check_if_approved:
	cmpl 	$MINIMUM_MODULES, %esi				# bits of 1s >= 10?
	jge 	inc_student
	incq 	%r9									# index++
	jmp 	looping					

inc_student:
	incl 	%eax								# number of students approved increased
	incq 	%r9									# index++
	jmp 	looping

end:
	# epilogue -----------------------------------------------------------------
	popq %r13
	popq %r12
	movq %rbp, %rsp        						# puts in rsp the value that was in the begining of this function
	popq %rbp		       						# restores the value in rbp 
	ret
