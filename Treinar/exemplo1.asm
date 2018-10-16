	.data
prompt:	.asciiz "ola"

	.text
	.globl main
main:	
#fazer um for que printe todos os numeros de 0 a 9
	#addi $t0, $t0, 1

for:	move $a0, $t0
	li $v0, 1
	syscall
	
	
	
	
	li $a0, '\n'
	li $v0, 11
	syscall
	
			
	
	
	
	
	addi $t0, $t0, 1
	
	blt $t0, 10, for
	
	
	
	
	
	
final:	la $a0, prompt
	li $v0, 4
	syscall

	li $v0, 10
	syscall
