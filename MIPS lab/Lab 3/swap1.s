#Swap two numbers using a tempporary variable

.data
msg0: .asciiz "values before swapping"
msg1: .asciiz "values after swapping"
msg2: .asciiz "Enter"

.text  
main: 	li $v0,4
	la $a0,msg2
	syscall

	li $v0,5
	syscall
	move $t0,$v0

	li $v0,5
	syscall
	move $t1,$v0

	li $v0,4
	la $a0,msg0
	syscall
	
	li $v0,1
	move $a0,$t0
	syscall

	li $v0,1
	move $a0, $t1
	syscall

	move $t2,$t0
	move $t0,$t1
	move $t1,$t2

	li $v0,4
	la $a0, msg1
	syscall

	li $v0,1
	move $a0,$t0
	syscall

	li $v0,1
	move $a0, $t1
	syscall

	jr $ra

