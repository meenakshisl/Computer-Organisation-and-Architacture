#Write a program in MIPs that take an integer from the user , perform SLL and print the output 


.data

msg1: .asciiz "\nEnter the integer"
msg2: .asciiz "\nInteger shifted by two bits is: "

.text
	.globl main

main:
	li $v0,4
	la $a0, msg1
	syscall

	li $v0,5
	syscall
	move $t0,$v0


	sll $t0,$t0,2

	li $v0,4
	la $a0,msg2
	syscall

	li $v0,1
	move $a0,$t0
	syscall

	li $v0,10
	syscall