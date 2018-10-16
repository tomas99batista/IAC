	.text
	.globl main
main:	li $t1, 0x12857F5A
	
	andi $a0, $t1, 0xF0000000
	srl $a0, $a0, 28
	li $v0, 34
	syscall 
	