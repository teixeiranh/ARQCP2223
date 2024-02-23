# Initialized data-------------------------------------------------
.section .data

# Coding instructions----------------------------------------------
.section .text
    .global vec_count_bits_one

vec_count_bits_one:
	# prologue ---
	# rdi - rsi - rdx - rcx - r8 - r9
	pushq %rbp # saves to the stack the rbp value from the caller
	movq %rsp, %rbp # copies the stack pointer rsp to rbp

	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14

	movq $0, %r14

	# function body ---
	leaq (%rdi), %r13 # get the address of the first parameter at r13
	movl %esi, %ebx # set the number of elements of the array @ebx
	
	looping:
	movw (%r13), %r12w # move the pointed short to r12w
	cmpl $0, %ebx # check if array is null
	je end

	pushq %rdi # save rdi at the stack

#	movswl %r12w, %edi
	movw %r12w, %di # move the value @r12w to the first argument of the called function

	# como fazemos para passar isto para o valor correcto?
	# neste momento estamos a dar um inteiro, mas queremos um short

	call count_bits_one
	
	popq %rdi # get the value of rdi back

	addl %eax, %r14d # add the returned value to r14d
	subl $1,%ebx # decrement the counter
	addq $2, %r13 # move the pointer 2 bytes to the next short
	jmp looping # go back to looping

	end:
	movl %r14d, %eax # move the sum to the return

	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	
	# epilogue ---
	movq %rbp, %rsp # copies to rsp the value at the beginning of the function
	popq %rbp # puts the caller value back to rbp

    ret

