section .text
	global _ft_isdigit

_ft_isdigit:
	push	rbp
	mov		rbp, rsp

	cmp		edi, '0'
	jl		nope
	cmp		edi, '9'
	jg		nope

	mov		rax, 1

	leave
	ret

nope:
	xor		rax, rax

	leave
	ret

