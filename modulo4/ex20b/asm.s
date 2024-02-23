# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global sum_multiples_x

sum_multiples_x:
	# prologue ----------------------------------------------------
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	# function body ------------------------------------------------
	# rdi - rsi - rdx - rcx - r8 - r9
	# rbx - r12 - r13 - r14 - 15
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15

	movq $0, %r14 # clears the value @r14

	# find the multiple to test ---
	movl %esi, %r12d

	# shifts to isolate byte number 2
	shr $8,%r12d
	shl $24,%r12d
	shr $24,%r12d
	movb %r12b, %cl # store byte number 2 @cl

	looping:
	movb (%rdi), %r15b # moves the pointed value to r15d
    cmpb $0, %r15b # if equal to 0 then terminate
    je end
    
	movl $0, %eax # clean the value @eax
	movb %r15b, %al # moves the pointed value to al
    divb %cl # remainder in ah
    
	cmpb $0, %ah # if 0 then it is multiple
    je sum # go to sum

    addq $1,%rdi # increments the pointer position
	jmp looping # go back up
    
	sum:
    addb (%rdi), %r14b # keeps adding the values @r14b
    addq $1,%rdi # increments the pointer
    jmp looping # go back up

	end:
	movl %r14d, %eax # return the value of the sum

	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue -----------------------------------------------------
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

