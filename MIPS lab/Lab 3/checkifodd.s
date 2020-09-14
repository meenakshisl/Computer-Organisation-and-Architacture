#Swap two numbers without using a tempporary variable

.data
msg: .asciiz "Enter a number"
odd: .asciiz "Odd"
even: .asciiz "Even"

.text  
main: 	li $v0,4
	la $a0,msg
	syscall

	li $v0,5
	syscall
	move $t0,$v0

	and $t1,$t0,1
	beq $t1,1,Odd	#Odd



Even:	li $v0,4
	la $a0, even
	syscall
	j Exit

Odd:	li $v0,4
	la $a0, odd
	syscall

Exit:	li $v0,10
	syscall
