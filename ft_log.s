%define SYSCALL(n) 0x2000000 | n

section			.data
	log_file	db		"log.txt", 0
	break		db		10

section			.text
	global 		_ft_log

_ft_log:
	push		rbp
	mov			rbp, rsp
	mov			rbx, rdi

open:
	mov			rax, SYSCALL(5)
	mov			rdi, log_file
	mov			rsi, 522 
	mov			rdx, 420
	syscall
	cmp			rax, 2
	jle			error

	mov			rdi, rax
	mov			rsi, rbx

write:
	cmp			byte [rsi], 0
	je			end
	mov			rdx, 1
	mov			rax, SYSCALL(4)
	syscall
	inc			rsi
	jmp			write

end:
	mov			rax, SYSCALL(4)
	mov			rsi, break
	mov			rdx, 1
	syscall
	mov			rax, SYSCALL(6)
	syscall
	mov			rax, 1
	leave
	ret

error:
	mov			rax, -1
	leave
	ret
