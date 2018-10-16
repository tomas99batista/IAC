	.data
prompt1: .asciiz  "Insira um número: "
strpar: .asciiz "O número é par!"
strimp:	.asciiz "O número é ímpar!"

	.text
	.globl main
main:
	la $a0, prompt1
	li $v0,4
	syscall #printstr(Insira um numero....)
	li $v0, 5
	syscall #readint
	move $t0, $v0 #t0 = valor lido
	
	andi $v0, $v0, 1
	if: bne $v0,0,else	#if((a&1)==0)
	la $a0, strpar
	li $v0, 4
	syscall #print(strpar)
	j endif
	
	else:	la $a0, strimp	
	li $v0, 4
	syscall	#print(strimp)
	
	endif: li $v0,10
	syscall #exti
	