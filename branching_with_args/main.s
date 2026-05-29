# Simple application that demonstrates some branching

.global 	_start

.section .text

_start:

  mov $msgStart, %r8
  mov $lenStart, %r9
  call _print

  mov $msgFunc, %r8
  mov $lenFunc, %r9
  call _print

	mov $60, %rax	#exit syscall
	mov $0, %rdi	#exit code
	syscall

#Print function that takes two args, The string to print and its length 
#It expects the string id to be in r8 and the length to be in r9
_print:
	mov $1,	%rax	#write syscall
	mov $1, %rdi	#stdout, where to write to
	mov %r8, %rsi	#string
	mov %r9, %rdx	#string size
	syscall
  ret

.section .data

msgStart:
	.ascii "Start\n"
lenStart= . - msgStart

msgFunc:
	.ascii "Function1\n"
lenFunc= . - msgFunc
