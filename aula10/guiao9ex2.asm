strlen:	li $v0, 0 #n=0
	li $t0, 0 #i=0

while:	addu $t1, $a0, $t0 #str + i * 1
	addi $t0, $t0, 1 #i++
	lb	$t2, 0($t1) #t2=str[i]
	beq $t2, '\0', endwhile
	addi $v0, $v0, 1 #n++
	j while

endwhile: jr $ra
	la $v0, 12
	syscall
