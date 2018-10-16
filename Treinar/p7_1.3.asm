	.data
prompt: .asciiz "Introduza um número: \n"
result: .asciiz "O fatorial do número é: "
	.text
	.globl main
main:
	# i = $t0 = n = $t1
	# n = $t1 = read_int
	# f = $t2 = 1 = resultado
	
	la $a0, prompt
	li $v0, 4
	syscall #print prompt
	li $v0, 5
	syscall #read_int
	
	move $t1, $v0  # n = read_int
	move $t0, $t1  # i = n
	li $t2, 1 #f=1
	
for:	ble $t0, 0, endfor
	mul $t2, $t2, $t0
	subi $t0, $t0, 1
	j for

endfor:	la $a0, result
	li $v0, 4
	syscall #print result
	la $a0, ($t2)
	li $v0, 1
	syscall #print f 	