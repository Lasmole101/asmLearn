.global 	_start

.section .text

_start:
	mov $1,	%rax	#write syscall
	mov $1, %rdi	#stdout, where to write to
	mov $msg, %rsi	#string
	mov $13, %rdx	#string size
	syscall

	mov $60, %rax	#exit syscall
	mov $0, %rdi	#exit code
	syscall

.section .data

msg:
	.ascii "Hello, world\n"
len= . - msg



