	.data
prompt1: .asciiz "Introduza um numero\n"
	
	.text
	.globl	main

main:
	la	$a0,prompt1
	li	$v0,4
	syscall
	
	li	$v0,5
	syscall
	
	move	$t0,$v0
	
	li	$t1,0	#i = 0
	la	$a0,'-'
	
for:
	bge	$t1,$t0,end
	
	addi	$t1,$t1,1
	#Or sem pseudo instrucao:
	#lui	$t1, 0x0000
	#ori	$t1, $t1,0x0001	
	
	li	$v0,11
	syscall
	j	for
	
end:	
	li	$v0,10
	syscall	
	
