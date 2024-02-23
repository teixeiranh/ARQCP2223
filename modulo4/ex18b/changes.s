.section .data
		
.section .text
    .global changes

changes:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	subq $4, %rsp 						# alocar espaço na stack
	movl (%rdi), %esi					# mover apontado de rdi para esi
		
	movl $0x000000FF, -4(%rbp)			# mascara para o segundo byte alocada na stack	
	shr $8, %esi						# shift à direita 8 bits para colocar o segundo byte na posição do primeiro
	and -4(%rbp), %esi					# mascarar para tirar só o segundo byte
	
	cmpl $15, %esi						# conferir se o segundo byte é maior que 15
	jle end								# caso menor ou igual saltar para o end
	
	movl (%rdi), %esi					# mover apontado de rdi para esi 
	
	not %esi							# inverter bits em esi
	
	movl $0x00FF0000, -4(%rbp)			# mascara para obter o terceiro byte alocada na stack
	and -4(%rbp), %esi					# apenas o terceiro byte invertido colocado em esi
	
	movl (%rdi), %ecx					# mover apontado de rdi para ecx 
	
	movl $0xFF00FFFF, -4(%rbp)			# mascara para obter os restantes bytes alocada na stack
	and -4(%rbp), %ecx					# restantes bytes (4,2,1) colocados em ecx
	
	addl %ecx, %esi						# soma do terceiro byte invertido com os restantes bytes
	
	movl %esi, (%rdi)					# mover a soma anterior para a posição de memoria do apontador
	
end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret

