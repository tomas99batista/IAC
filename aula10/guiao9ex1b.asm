	.data
prompt: .asciiz "Introduza um número"
result: .asciiz "O fat do num é: "
	.text
	.globl main
main:
	la $a0, prompt
	li $v0, 4
	syscall #print prompt
	li $v0, 5
	syscall #$v0 =read int
	move $a0, $v0 #a0=n
	jal factorial
	move $t0, $v0 #t0 =f=factorial(n)
	la $a0, result
	li $v0, 4
	syscall #printstrg(result)
	move $a0, $t0
	li $v0, 1
	syscall #printint(f)
	li $v0, 10
	syscall
	
factorial: 
	li $v0, 1 #res = 1
	move $t0, $a0 #i=num
for:
	ble $t0, 0, endfor
	mul $v0, $v0, $t0 #res = res * i
	subi $t0, $t0, 1 #i--
	j for

	
endfor: jr $ra
