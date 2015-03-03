section .text
	global _ft_isalpha

_ft_isalpha:
	push	rbp
	mov		rbp, rsp

	cmp		edi, 'A'
	jl		nope
	cmp		edi, 'z'
	jg		nope
	cmp		edi, 'Z'
	jle		yes
	cmp		edi, 'a'
	jge		yes

nope:
	xor		rax, rax

	leave
	ret

yes:
	mov		rax, 1

	leave
	ret
