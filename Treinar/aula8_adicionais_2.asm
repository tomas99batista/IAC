	.data
frase:	.asciiz "Insira 6 numeros: "
	
		.align 2		#vai para o endereço seguinte que seja multiplo de 2²
lista:	.space 24	#6*4 = 24
	
	.text
	.globl main
	
main:	la $t0, lista	
	li $t1, 0	#t1 é i
	
	la $a0, frase
	li $v0, 4
	syscall
	
	
for:	bge $t1, 6, final

	sll $t2, $t1, 2
	addu $t3, $t0, $t2
	
	li $v0, 5
	syscall
	sw $v0, 0($t3)
	
	addi $t1, $t1, 1
	j for
	

final:	lw $a0, 20($t0)
	li $v0, 1
	syscall

	li $v0, 10
	syscall
	
