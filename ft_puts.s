%define SYSCALL(n) 0x2000000 | n

section .text
	global _ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	mov		rbx, rdi

loop:
	cmp		byte [rbx], 0
	je		end
	mov		rdi, 1
	mov		rsi, rbx
	mov		rdx, 1
	mov		rax, SYSCALL(4)
	syscall
	inc		rbx
	jmp		loop

end:
	leave
	ret
