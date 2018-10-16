	.data
prompt1:.asciiz	"Introduza um numero\n"
result:	.asciiz	"O fatorial do numero inserido e : "
	
	.text
	.globl	main
main:
	la	$a0,prompt1
	li	$v0,4
	syscall
	
	li	$v0,5
	syscall
	move	$s0,$v0
	
	move	$t0,$s0
	
	li	$t1,1

for:
	blez	$t0,end
	mul	$t1,$t1,$t0
	addi	$t0,$t0,-1
	
	j	for

end:
	la	$a0,result
	li	$v0,4
	syscall
	
	move	$a0,$t1
	li	$v0,1
	syscall
	
	
	