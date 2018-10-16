	.data
nome_qualquer: .asciiz "Ola Mundo"

	.text
	.globl main
main:	la $a0, nome_qualquer
	li $v0, 4
	syscall   	#print_str("Ola_Mundo")
	
	li $v0, 10
	syscall		#exit