	.data
prompt1:.asciiz	"Introduza um numero\n"
strPar:.asciiz	"O numero e par\n"
strImp: .asciiz	"O numero e impar\n"
	
	.text
	.globl	main

main:
	la	$a0,prompt1
	li	$v0,4
	syscall
	
	li	$v0,5
	syscall
	
	move	$t0,$v0
	
	div	$t0,$t0,2	#Se um e par, entao a divisao por 2 dara resto 0
	mfhi 	$t0
	
	bnez	$t0,notPar
	
	la	$a0,strPar
	li	$v0,4
	syscall
	
	li	$v0,10
	syscall
	
notPar:
	la	$a0,strImp
	li	$v0,4
	syscall
	
	