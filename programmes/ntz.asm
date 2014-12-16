	.data


	.text
	.globl __start
	
__start:
	li $t0 32	#f020
	li $t1 0	#f100
	li $t3 1	#f301
	li $t4 0	#400
	sub $t2 $t0 $t3	#9203
	not $t0 $t0	#c00x
	and $t0 $t0 $t2	#b002
	while:	beq $t0 $t4 endW	#2043
		add $t1 $t1 $t3		#8113
		sra $t0	$t0 1		#e003
		b while			#1xx9
	endW:
	
	move $a0 $t1
	li $v0 1
	syscall
	
	li $v0 10
	syscall
