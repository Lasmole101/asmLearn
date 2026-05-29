.global _start

.section	.text

_start:
	#read from the input
	mov $1, %rax #set write function for syscall
	mov $1, %rdi
	mov $msg1, %rsi 
	mov $len1, %rdx
	syscall
	
	mov $0, %rax #set read function for syscall
	mov $1, %rdi
	mov $num1, %rsi 
	mov $2, %rdx
	syscall

	mov $1, %rax #set write function for syscall
	mov $1, %rdi
	mov $msg2, %rsi 
	mov $len2, %rdx
	syscall
	
	mov $0, %rax #set read function for syscall
	mov $1, %rdi
	mov $num2, %rsi 
	mov $2, %rdx
	syscall
	
	mov $1, %rax #set write function for syscall
	mov $1, %rdi
	mov $msg3, %rsi 
	mov $len3, %rdx
	syscall
	
	mov $0, %rax #set read function for syscall
	mov $1, %rdi
	mov $op, %rsi 
	mov $2, %rdx
	syscall
	

	mov $60, %rax
	mov $0, %rdi #exit with code 0
	syscall


_addition:
	mov num1, %rax
	mov num2, %rdi
	add %rax, %rdi
	ret



.section	.data
	msg1: .ascii "Enter digit 1\n"
	len1 = . - msg1

	msg2: .ascii "Enter digit 2\n"
	len2 = . - msg2

	msg3: .ascii "Enter an operation(0 for addition)\n"
	len3 = . - msg3



.section	.bss
	
	num1: .short 
	num2: .short
	result: .short
	op: .short
