# Initialized data----------------------------------------------------
.section .data
	
	# Constants definition
	.equ STUDENT_NUMBER_OFFSET, 0		# short number; - 2 bytes
	.equ STUDENT_AGE_OFFSET, 2 			# char age; - 1 byte
	.equ STUDENT_GRADES_OFFSET, 4		# int grades[5]; - 5 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 24		# char name[60]; - 60 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 84		# char address[100]; - 100 x 1 byte
	.equ DATA_SIZE, 184					# total

# Coding instructions-------------------------------------------------
.section .text
	.global update_address

# Function -----------------------------------------------------------
# void update_address(Student *s, char *new_address);
# &s in %rdi, &new_addresss in %rsi
update_address:

	# Function Arguments -------------------------------------------------------
	# 		1		2		3		4		5		6		
	# 64	%rdi	%rsi	%rdx	%rcx	%r8		%r9		%rax		%rbx
	# 32	%edi	%esi	%edx	%ecx	%r8d	%r9d	%eax		%ebx
	# 16	%di		%si		%dx		%cx		%r8w	%r9w	%ax			%bx	
	# 8		%dil	%sil	%dh-dl	%ch-cl	%r8b	%r9b	%%ah-al		%bh-%bl
	# --------------------------------------------------------------------------
	# calle-saved	%rbx 	%r12	%r13	%r14	%r15

	# prologue -------------------------------------------------------
	pushq %rbp 		# saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	pushq %rbx
	
	movq $0, %rax
	movq $0, %rbx
	movq $0, %rcx 	# counter

	cmpb $0, (%rsi) # check if string is empty
	je empty 

	loop_string:

	movb (%rsi,%rcx,1), %al # store the first "offseted" char in %al
	cmpb $0, %al 			# verify is string is fully traversed
	je end
	movb %al, STUDENT_ADDRESS_OFFSET(%rdi,%rcx,1) # deslocate %al to the address offset

	incq %rcx 				# increment the counter
	
	jmp loop_string

	empty:
	movb $0, STUDENT_ADDRESS_OFFSET(%rdi) 			# case is empyt

	end:
	movb $0, STUDENT_ADDRESS_OFFSET(%rdi,%rcx,1)  	# terminate the string with 0 (very important, otherwise tests will fail!)

	popq %rbx

	# epilogue -----------------------------------------------------
	movq %rbp, %rsp	# copies to rsp the value at the beginning of the function
	popq %rbp 		# puts the caller value back to rbp

	ret
