.data
prompt1: .asciiz "Introduza uma string\n"
result: .asciiz "O numero de caracters numericos \n"
str: .space 40

.text
.globl main

main:
	la $a0,prompt1
	li $v0,4
	syscall
	
	la $a0,str
	li $a1,40
	li $v0,8
	syscall
	
	li $t0,0 #i=0
	li $t1,0 #n=0
	la $t2,str
while:
	add $t4,$t2,$t0 #endereco do array
	lb $t3,0($t4)	
	beq $t3,'\0',endwhile
	
if:
	blt $t3,'0',else
	bgt $t3,'9',else
	addi $t1,$t1,1

else:
	addi $t0,$t0,1
	j while
endwhile:
	
	move $a0,$t1
	li $v0,1
	syscall
	
