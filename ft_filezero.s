%define SYSCALL(n) 0x2000000 | n

section .data
	hello	db	"hellow", 0

section .text
	global _ft_filezero


_ft_filezero:
	push		rbp
	mov			rbp, rsp
	
	mov			rax, SYSCALL(5)
	mov			rsi, 1537
	mov			rdx, 420
	syscall

	mov			rsi, 0
	mov			rdx, 1
	mov			rdi, rax
	mov			rax, SYSCALL(4)
	syscall

end:
	leave
	ret
