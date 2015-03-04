section .text
	global _ft_isprint

_ft_isprint:
	push	rbp
	mov		rbp, rsp

	cmp		edi, 32
	jl		nope
	cmp		edi, 126
	jg		nope

	mov		rax, 1

	leave
	ret

nope:
	xor		rax, rax

	leave
	ret

