.data
maius: .asciiz "TEXTO EM MAISCULAS"
minus: .space 20

.text
.globl main

main:
	li $t0,0 #i=0
	la $t1,maius

while:
	addu $t2,$t1,$t0
	lb $t3,0($t2)
	beq $t3,'\0',endwhile
	
if:	blt $t3,'A',else
	bgt $t3,'Z'else
	add $t3,$t3,'a'
	sub $t3,$t3,'A'
else:
	la $t4,minus
	addu $t5,$t4,$t0 #endereco minus+i
	sb $t3,0($t5)
	addi $t0,$t0,1
	j while
endwhile:
	la $a0,minus
	li $v0,4
	syscall
	

	