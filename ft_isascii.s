section .text
	global _ft_isascii

_ft_isascii:
	push	rbp
	mov		rbp, rsp

	cmp		edi, 0
	jl		nope
	cmp		edi, 127
	jg		nope

	mov		rax, 1

	leave
	ret

nope:
	xor		rax, rax

	leave
	ret

