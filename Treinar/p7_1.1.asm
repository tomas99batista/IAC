	.data
prompt1: .asciiz "Introduza um n�mero: \n"
par: .asciiz "O n�mero � par! \n"
impar: .asciiz "O n�mero � �mpar! \n"
	.text
	.globl main
main:
	la $a0, prompt1
	li $v0, 4
	syscall #print(prompt1)
	
	li $v0, 5
	syscall #read_int
	move $t0, $v0 #mover para variavel o valor lido

	and $t0, $t0, 1

	beq $t0, 1, else
if: 	la $a0, par
	li $v0, 4
	syscall #print(par)
	j done

else:	la $a0, impar
	li $v0, 4
	syscall #print(impar)
	
done: 
	li $v0, 10
	syscall #exit