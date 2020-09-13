#program to multiply two numbers

.data
msg2: .asciiz "Product :"

.text  

main: 	li $v0,5
	syscall
	move $t0,$v0

	li $v0,5
	syscall
	move $t1,$v0

	div $t1,$t1,$t0
	
	li $v0,4
	la $a0, msg2
	syscall

	li $v0,1
	move $a0,$t1
	syscall

	jr $ra
