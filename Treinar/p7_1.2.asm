	.data
prompt1: .asciiz "Introduza um número: "
char: 	.asciiz "-"
	.text
	.globl main
main:
	la $a0, prompt1
	li $v0, 4
	syscall #print(prompt1)
	
	li $v0, 5
	syscall #print(prompt1)
	move $t0, $v0  #$t0 = a = read_int 
	
	addi $t1, $0, 0 #i = $t1 = 0 
	
for: 	beq $t1, $t0, end
	la $a0, char
	li $v0, 4
	syscall #print
	addi $t1, $t1, 1
	j for	
			
end: #over
	