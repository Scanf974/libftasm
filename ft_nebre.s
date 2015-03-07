section .data
	tenebre		db		27, "[2J", 27, "[1;1H", 0
	len			equ		$-tenebre

section .text
	global _ft_nebre

_ft_nebre:
	push	rbp
	mov		rbp, rsp

	mov		rdi, 1
	mov		rsi, tenebre
	mov		rdx, len
	mov		rax, 0x2000004
	syscall

	leave
	ret
