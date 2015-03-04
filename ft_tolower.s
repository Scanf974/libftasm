section .text
	global	_ft_tolower

_ft_tolower:
	push	rbp
	mov 	rbp, rsp

	cmp		edi, 'A'
	jl		nope
	cmp		edi, 'Z'
	jg		nope

	add		edi, 32

	mov		eax, edi

	leave
	ret

nope:
	mov		eax, edi

	leave
	ret
