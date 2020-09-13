#program to add two numbers

.data

MSG1: .asciiz  "Enter the numbers:"
      .text

main:
	li $t1,5	#loads the value of 5 into temporary register
	li $t2,6
	add $t1,$t1,$t2
	li $v0,4
	la $a0,MSG1
	syscall
	li $v0, 1
	move $a0,$t1
	syscall
	jr $ra
	