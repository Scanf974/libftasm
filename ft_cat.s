%define BUFF_SIZE 6
%define SYSCALL(n) 0x2000000 | n

section			.text
	global	_ft_cat

_ft_cat:
	push		rbp
	mov			rbp, rsp
	
	mov			r12, rsp
	sub			rsp, BUFF_SIZE

__read:
	mov			rsi, r12
	mov			rdx, BUFF_SIZE
	mov			rax, SYSCALL(3)
	syscall
	cmp			rax, 0
	jle			end
	push		rdi
	mov			rdi, 1
	mov			rdx, rax
	mov			rax, SYSCALL(4)
	syscall
	pop			rdi
	jmp			__read

end:
	mov		rsp, rbp
	pop		rbp
	ret

