	.data
string: 	.space 40
prompt1:	.asciiz "Introduza uma string: \n"
result:		.asciiz "O n�mero de caracteres num�ricos: "
	.text
	.globl main
main:
	la $s0, string
	
saved:
	
	
