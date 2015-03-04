section .data

section .text
	global	_ft_memcpy

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	xor		rcx, rcx
	mov		rbx, rdi

loop:
	cmp		rcx, rdx
	je		end
	mov		al, byte [rsi]
	mov		byte [rbx], al
	inc		rbx
	inc		rcx
	inc		rsi
	jmp		loop

end:
	mov		rax, rdi

	leave
	ret
