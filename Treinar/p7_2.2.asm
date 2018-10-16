	.data
prompt: .asciiz "Introduza um número: "
result: .asciiz "\nO número em hexadecimal é: "
	.text
	.globl main

main:	# num, n --> $t0, $t1
	la $a0, prompt
	li $v0, 4
	syscall #print(prompt)
	li $v0, 5
	syscall #read_int
	move $t0, $v0 #read_int = num 	
	
	li $t1, 0 #n=0
	li $t2, 8 #8
for:	bge $t1, $t2, endfor #se n => 8 parte
	andi $t3, $t0, 0xF0000000
	srl $t3, $t3, 28
	la $a0, ($t3)
	li $v0, 34
	syscall #print_16
	addi $t1, $t1, 1
	sll $t0, $t0, 4
	j for
	
endfor:	li $v0, 10
	syscall #exit