	.data
	.text
	.globl __start
	
__start:
	li $t1, 150	#i
	li $t0, 100	#j
	
while : beq $t1, $t0, endW

if:	ble $t1, $t0, else
then: sub $t1, $t1,$t0
	b endif
else:
	sub $t0, $t0,$t1

endif:
	b while
endW:

move $a0, $t0
li $v0, 1
syscall



li $v0, 10
syscall