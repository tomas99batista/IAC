	.data
str1: .asciiz "Introduza dois números: "
str2: .asciiz "A soma dos números é: "
	.text
	.globl main
main:	
	la $a0, str1
	li $v0,4
	syscall #print
	
	li $v0,5
	syscall
	move $t0,$v0 #1o input
	
	li $v0, 5
	syscall
	move $t1, $v0 #1o input
	
	la $a0, str2
	li $v0, 4
	syscall #print
	
	add $a0, $t0, $t1 #soma #move $a0, $t2 se fizesse a soma para o $t2
	la $v0, 1 $#36
	syscall #print do nr
	
	li $v0, 10
	syscall #exit