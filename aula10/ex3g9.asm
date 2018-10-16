strcopy: #dst -> $a0 src -> $a1
	#i -> $t0
	li $t0, 0 #i=0
	addu $t1, $a1, $t0 #t1=&src[i]
	lb $t2, 0($t1) #t2=src[i]
	beq $t2, '\0', endwhile_copy
	addu $t3, $a0, $t0 #t3=&dst[i]
	sb $t2, 0($t3) #dst[i]=src[i]
	addi $t0, $t0, 1 #i++
	j endwhile_copy
	
endwhile_copy:
	add $t3, $a0, $t0 #t3=&dst[i]
	sb $0,0($t3) #dst[i]='\0'
	move $v0, $a0 #v0=dst
	jr $ra	