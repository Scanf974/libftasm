section .data

section .text
	global	_ft_strcpy

_ft_strcpy:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi
	mov		rdx, rsi

loop:
	cmp		byte [rdx], 0
	je		end
	mov		al, byte [rdx]
	mov		byte [rbx], al
	inc		rdx
	inc		rbx
	jmp		loop

end:
	mov		byte [rbx], 0
	mov		rax, rdi

	leave
	ret

