section .text
	global	_ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	push	rbx
	mov		rbx, rdi
	xor		rcx, rcx

loop:
	cmp		byte [rbx], 0
	je		end
	inc		rcx
	inc		rbx
	jmp		loop

end:
	mov		rax, rcx
	pop		rbx

	leave
	ret
