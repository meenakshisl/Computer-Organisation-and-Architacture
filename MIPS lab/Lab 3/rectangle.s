#program to multiply two numbers

.data
msg0: .asciiz "Area :"
msg1: .asciiz "Enter the length: "
msg2: .asciiz "Enter the width: "

.text  
main: 	li $v0,4
	la $a0,msg1
	syscall

	li $v0,5
	syscall
	move $t0,$v0
	
	li $v0,4
	la $a0,msg1
	syscall

	li $v0,5
	syscall
	move $t1,$v0

	mul $t1,$t1,$t0
	
	li $v0,4
	la $a0, msg0
	syscall

	li $v0,1
	move $a0,$t1
	syscall

	jr $ra
