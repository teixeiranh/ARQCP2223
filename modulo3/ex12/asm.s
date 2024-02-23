# Initialized data-------------------------------------------------
.section .data
	.global ptrvec
	.global num

# Coding instructions----------------------------------------------
.section .text
	.global vec_zero

vec_zero:
	pushq %rbx # pushs rbx to the stack

	movl $0, %eax # moves the value 0 to eax
	movl $0, %ecx # moves the value 0 to ecx
	movl $0, %edx # moves the value 0 to edx
	movq ptrvec(%rip), %rsi  # moves the pointer to rsi
	movl num(%rip), %edx # moves num to edx

looping:
	movl (%rsi), %ecx # moves the pointed value of rsi to ecx
	cmpl $0,%edx  # compares 0 to edx (num)
	je end
	cmpl $100, %ecx # compares 100 to ecx(pointed value of rsi)
	jl increment
	addl $1, %eax # adds 1 to eax (returned value) 
	movl $0, (%rsi) # moves 0 to the current pointed value of rsi

increment:
	addq $4, %rsi # increments the int array pointer
	decl %edx # decrements edx (num)
	jmp looping 

end:
	popq %rbx 
	ret
