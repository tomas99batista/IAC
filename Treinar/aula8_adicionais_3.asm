	.data
lista:	.word 1, 2, 9, 4, 5, 6

	.text
	.globl main
	
main:	la $t0, lista
	
	
do:	li $t1, 0	#t1 é houveTroca (0==false e 1==true)
	li $t2, 0	#t2 é i
	
for:	bge $t2, 5, while
	
	sll $t3, $t2, 2	#t3=index i
	addi $t4, $t3, 4	#t4=index i+1
	
	addu $t3, $t0, $t3
	addu $t4, $t0, $t4
	
	lw $a1, 0($t3)
	lw $a2, 0($t4)
	
	
	
if:	ble $a1, $a2, adicionar
	
	move $t5, $a1
	sw $a2, 0($t3)
	sw $t5, 0($t4)
	li $t1, 1
	
	
	
adicionar:	addi $t2, $t2, 1
		j for
	
while:	beq $t1, 0, do
	
final: 	lw $a0, 12($t0)
	li $v0, 1
	syscall


	li $v0, 10
	syscall
	
