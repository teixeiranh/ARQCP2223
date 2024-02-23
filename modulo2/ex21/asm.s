/***********************asm.s***********************/
.section .data
	.global code, currentSalary    				#shorts
	
	.equ MANAGER_CODE, 20
	.equ ENGINEER_CODE, 21
	.equ TECHNICIAN_CODE, 22
	
	.equ ANYWAY_RAISE, 150
	.equ MANAGER_RAISE_AFTER_ANYWAY, 250
	.equ ENGINEER_RAISE_AFTER_ANYWAY, 150
	.equ TECHNICIAN_RAISE_AFTER_ANYWAY, 50
	
	
.section .text
	.global new_salary        					#void new_salary(void)
	
new_salary:
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movw currentSalary(%rip), %ax   			#places currentSalary in output
	addw $ANYWAY_RAISE, %ax						#add ANYWAY_RAISE to output
	movw code(%rip), %dx    					#places code in dl register
		
	cmpw $MANAGER_CODE, %dx         			#compares MANAGER_CODE with code
	je manager									#jumps to manager if equals 
	
	cmpw $ENGINEER_CODE, %dx 					#compares ENGINEER_CODE with code
	je engineer									#jumps to engineer if equals 
	
	cmpw $TECHNICIAN_CODE, %dx					#compares TECHNICIAN_CODE with code
	je technician								#jumps to technician if equals
	
	jmp end
	
manager:
	addw $MANAGER_RAISE_AFTER_ANYWAY, %ax		#add MANAGER_RAISE_AFTER_ANYWAY to output
	jmp end
	
engineer:
	addw $ENGINEER_RAISE_AFTER_ANYWAY, %ax 		#add ENGINEER_RAISE_AFTER_ANYWAY to output
	jmp end
	
technician: 
	addw $TECHNICIAN_RAISE_AFTER_ANYWAY, %ax	#add TECHNICIAN_RAISE_AFTER_ANYWAY to output

end:
	ret

