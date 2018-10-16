	.data
min: .asciiz "minusculas"
maius: .space 10

	.text
	.globl main
main: 
	la $a0, min
	la $a1, maius
	li $t0, 0 #i = 0 
	li $t1, 9 #space = 9
	
while:	bgt $t0, $t1, end_while
	
	lw $t0, 0($t1)
	sll $t1, $t1, 2		#4i
	
	add $t3, $t3, $t0	#4i
	
	
	addi $t0, $t0, 1	#i++
	j while
	
end_while:
	la $a0, maius
	li $v0, 4
	syscall