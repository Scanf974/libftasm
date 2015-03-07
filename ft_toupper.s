section .text
	global	_ft_toupper

_ft_toupper:
	push	rbp
	mov 	rbp, rsp

	cmp		edi, 'a'
	jl		nope
	cmp		edi, 'z'
	jg		nope

	sub		edi, 32

	mov		eax, edi

	leave
	ret

nope:
	mov		eax, edi

	leave
	ret
