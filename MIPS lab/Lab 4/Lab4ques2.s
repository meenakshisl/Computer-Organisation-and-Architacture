.data
msg1:	.asciiz	"\nEnter an Integer:   "
msg2:	.asciiz	"\nLogical Not(Integer):  "
null:   .asciiz	"\n"
.text
	.globl	main
main:
	li $v0,4
	la $a0,msg1
	syscall

	li $v0,5
	syscall
	move $t0,$v0

	nor $t0,$t0,$t0

	li $v0,4
	la $a0,msg2
	syscall

	li $v0,1
	move $a0,$t0
	syscall

	li $v0,10
	syscall