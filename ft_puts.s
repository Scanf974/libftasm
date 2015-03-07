;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                                        ;
;                                                                                        ;
; 888      8888888 888888b.   8888888888 88888888888     d8888  .d8888b.  888b     d888  ;
; 888        888   888  "88b  888            888        d88888 d88P  Y88b 8888b   d8888  ; 
; 888        888   888  .88P  888            888       d88P888 Y88b.      88888b.d88888  ;
; 888        888   8888888K.  8888888        888      d88P 888  "Y888b.   888Y88888P888  ;
; 888        888   888  "Y88b 888            888     d88P  888     "Y88b. 888 Y888P 888  ;
; 888        888   888    888 888            888    d88P   888       "888 888  Y8P  888  ;
; 888        888   888   d88P 888            888   d8888888888 Y88b  d88P 888   "   888  ;
; 88888888 8888888 8888888P"  888            888  d88P     888  "Y8888P"  888       888  ;
;                                                                                        ;
;	By: gbadi                                                                            ;
;	gbadi@student.42.fr                                                                  ;
;                                                                                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

%define SYSCALL(n) 0x2000000 | n

section			.data
	break		db 		10

section 		.text
	global _ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, 0
	je		exit
	push	rdx
	push	rbx
	push	rsi
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
	pop		rsi
	pop		rbx
	pop		rdx
	mov		rax, 1
	mov		rax, SYSCALL(4)
	mov		rdi, 1
	mov		rsi, break
	mov		rdx, 1
	syscall
	leave
	ret

exit:
	mov		rax, 0
	mov		rsp, rbp
	pop		rbp
	ret
	
