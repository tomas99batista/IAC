	.data
minus: .asciiz "texto em minusculas"
maius: .space 20
	.text
	.globl main
main:	li $t0, 0	#i=0
	la $t1, minus	#t1=0x10010000
while:	addu $t2, $t1, $t0	#t2=minus+i
	lb $t3, 0($t2)	#t3=minus[i]
	beq $t3, '\0', endwhile
	add $t3, $t3, 'A'
	sub $t3, $t3, 'a' #t3=minus[i]+'A'-'a'
	la $t4, maius
	add $t5, $t4, $t0	#t5=maius+i=&maius[i]
	sb $t3, 0($t5)	#miaus[i]=$t3
	addi $t0, $t0, 1	#i++
	j while
endwhile:
	la $a0, maius
	li $v0, 4
	syscall