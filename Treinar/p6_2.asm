	.data
	.text
	.globl main

main:	li $t0, 0xFF00F0F0
	
	sll $t1, $t0, 1
	srl $t2, $t0, 4
	sra $t3, $t0, 2
	
	la $a0, ($t1)
	li $v0, 34
	syscall