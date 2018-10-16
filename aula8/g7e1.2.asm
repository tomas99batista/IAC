	.data
	prompt1: .asciiz "Introduza um número: "
	
	.text
	.gobl main
main:
	la $a0, prompt1
	li $v0, 4
	syscall #print
	li $v0, 5
	syscall #readint
	move $t0, $v0 #t0 = valor lido
	
	li $t1, 0 #i=0
	for: bge $t1, $t0, endfor
	li $v0, 11
	li $a0, '-'
	syscall #printchar('-')
	
	addi $t1, $t1, 1
	
	j for
	
	endfor: li $v0, 10
		syscall #exit