.section .data
		
.section .text
    .global changes_vec

changes_vec:
	push %rbp 							# saves to the stack the rbp value from the caller
	movq %rsp, %rbp 					# copies the stack pointer rsp to rbp
	
	movl $0, %edx						# inicializa contador a 0
	
vec_loop:
	cmpl %edx, %esi						# conferir fim do vetor
	je end								# salta para end quando chega ao fim do vetor
	
	push %rdi							# guarda apontador do vetor na stack
	leaq (%rdi, %rdx, 4), %rdi			# manda valor apontado na posição rdx do vetor para rdi (primeiro argumento do changes)
	
	push %rsi							# guarda size do vetor na stack		
	push %rdx							# guarda contador na stack		
	
	call changes						
	
	pop %rdx							# restaura contador a partir da stack	
	pop %rsi							# restaura size do vetor a partir da stack	
	pop %rdi							# restaura apontador do vetor a partir da stack
	
	incl %edx							# incrementa contador em 1
	jmp vec_loop						# loopa ate meetar condicao

end:
	movq %rbp, %rsp 					# copies to rsp the value at the beginning of the function
	popq %rbp 							# puts the caller value back to rbp
    ret

