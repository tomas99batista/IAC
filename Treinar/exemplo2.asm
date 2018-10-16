	.data
	
lista:			.word 4, 3 , -2, 1, 27, 45

	.text
	.globl main
	
main:	la $t0, lista	#t0 é o endereço do vetor
		li $t1, 0
for:		beq $t1, 6, final
		sll $t1, $t0, 2
		addu $t2, $t0, $t1		#no t2 reservamos o valor do endereço $t0 mais o offset que é o $t1
		lw $a0, 0($t2)		#carregamos no $a0 (por conveniencia) o valor de $t2 
		
		li $v0, 4
		syscall 
		
		addi $s1, $s1, 1		# i ++
		
		j for

final:	
		
