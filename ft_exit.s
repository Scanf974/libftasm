%define SYSCALL(n) 0x2000000 | n

section			.text
	global	_ft_exit

_ft_exit:
	mov			rax, SYSCALL(1)
	syscall
