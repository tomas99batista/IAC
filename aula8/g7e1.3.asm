	.data
prompt1: .asciiz "Introduza um número: "
prompt2: .asciiz "O fatorial do número é: "

	.text
	.globl main
main: 
	la $a0, prompt1
	li $v0, 4
	syscall #print prompt1
	li $v0, 5
	syscall #read int
	move $t0, $v0
	
	li $t1, 1 #f=1
	move $t2, $t0 #i=n
	
for: 
	ble $t2, 0, endfor
	mul $t1, $t1, $t2
	subi $t2, $t2, 1 #i--
	
	j for
		
endfor:
	la $a0, prompt2
	li $v0, 4
	syscall #print prompt 2
	
	la $a0, ($t1)
	li $v0, 1
	syscall #print int resultado
	
	li $v0, 10
	syscall #exit