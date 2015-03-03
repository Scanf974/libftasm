section .text
	global	_ft_isalnum
	extern	_ft_isdigit
	extern	_ft_isalpha

_ft_isalnum:
	push	rbp
	mov		rbp, rsp

	call	_ft_isalpha
	cmp		rax, 1
	je		yes
	call	_ft_isdigit
	cmp		rax, 1
	je		yes

	mov		rax, 0

	leave
	ret

yes:
	mov		rax, 1
	leave
	ret

