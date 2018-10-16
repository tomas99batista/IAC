	.data
prompt1:		.asciiz "Introduza uma string: "
result:		.asciiz "O número de caracteres numéricos é: "
str:			.space 40
			.text
			.globl main

main:	la $a0, prompt1
		li $v0, 4
		syscall			#print string
	
		la $a0, str		#str carregado no $a0
		li $a1, 40			#$a1 = 40
		
		li $v0, 8			#input string
		syscall
		
		li $t0, 0			#n=0
		li $t1,0			#i=0
		la $t2, str		#str carregado no $t2
	
for:		addu $t3, $t2, $t1	#t3=&str[i]=str+i
		lb $t4, 0($t3)		#t4=str[i]
		
		beq $t4, '\0', endfor
	
if:		blt $t4, '0', endif
		bgt $t4, '9', endif
		addi $t0, $t0, 1	#n++
	
endif:	addi $t1, $t1, 1	#i++
		j for

endfor:	la $a0, result
		li $v0, 4
		syscall	#print
		move $a0, $t0
		li $v0,1
		syscall #printint
