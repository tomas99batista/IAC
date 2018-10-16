	.data
espaco: .asciiz "\n"
	.text
	.globl main
main:	li $t0, 0x12345678
	
	andi $a0, $t0, 0xF0000000
	sra $a0, $a0, 28
	li $v0, 34
	syscall
	
	la $a0, espaco
	li $v0, 4
	syscall #print(\n)
	
	andi $a0, $t0, 0x0F000000
	sra $a0, $a0, 24
	li $v0, 34
	syscall
	
	la $a0, espaco
	li $v0, 4
	syscall #print(\n)
	
	
	#repetir repetir
	
	
		