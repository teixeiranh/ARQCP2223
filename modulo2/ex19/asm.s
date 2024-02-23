/***********************asm.s***********************/
.section .data
	.global current, desire    	#bytes
	.equ SECONDS, 60
	.equ INCREASE_TEMP, 3
	.equ DECREASE_TEMP, 4
	
.section .text
	.global needed_time        	#void needed_time(void)
	
needed_time:
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movb current(%rip), %al    	#places current in output
	movb desired(%rip), %cl   	#places desired in ch register	
	
	cmpb %cl, %al              	#compares current with desired
	jl increase					#if current lower goes to increase 
	je unchanged				#if current equals goes to unchanged 
	jg decrease 				#if current greater goes to decrease 
	
increase:
	subb %al, %cl				#sub desired by current
	movb %cl, %al				#places difference into output
	mov $INCREASE_TEMP, %dl 	#places INCREASE_TEMP into register
	mul %dl  			        #mul output by 3 minutes
	jmp end
	
decrease: 
	subb %cl, %al				#sub current by desired, saves in output
	mov $DECREASE_TEMP, %dl  	#places DECREASE_TEMP into register
	mul %dl					    #mul output by 4
	jmp end
	
unchanged: 
	mov $0, %al				#places 0 into output

end:
	mov $SECONDS, %dl			#places SECONDS into register
	mul %dl						#mul output by 60 seconds
	ret

