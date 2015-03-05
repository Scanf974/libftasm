section .text
	global	_ft_strlen

_ft_strlen:
	push		rbp
	mov			rbp, rsp
	mov			al, 0
	mov			rcx, -1
	repne scasb
	not			rcx
	sub			rcx, 1

	mov			rax, rcx
	mov			rsp, rbp
	pop			rbp
	ret
