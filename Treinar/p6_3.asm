	.data
introduza: .asciiz "Introduza dois números: "
resultado: .asciiz "A soma dos numeros é: "
	.text
	.globl main
main:	la $a0, introduza
	li $v0, 4
	syscall #print
	
	li $v0, 5
	syscall #read_int
	move $t0, $v0
	
	li $v0, 5
	syscall #read_int
	move $t1, $v0
	
	add $t2, $t0, $t1
	#addu $t2, $t0, $t1
	
	la $a0, resultado
	li $v0, 4
	syscall #print
	
	la $a0, ($t2)
	li $v0, 1
	syscall #print_int