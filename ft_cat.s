%define BUFF_SIZE 1
%define SYSCALL(n) 0x2000000 | n

section			.text
	extern	_malloc
	extern	_ft_puts
	extern	_ft_exit
	global	_ft_cat

_ft_cat:
	push		rbp
	mov			rbp, rsp

; read (rdi, rsi, rdx)
; rdi = 3
; rsi = buffer
; rdx = BUFFSIZE

loop:
	mov			rax, SYSCALL(3)		; rax = 3
	mov			rdx, BUFF_SIZE
	syscall

	cmp			eax, 0
	jle			end

	mov 		rcx, rdi
	mov			rax, SYSCALL(4)
	mov 		rdi, 1
	mov 		rdx, 1
	syscall
	mov 		rdi, rcx

	jmp 		loop

end:
	leave
	ret
