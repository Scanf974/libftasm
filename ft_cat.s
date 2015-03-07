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

%define BUFF_SIZE 42
%define SYSCALL(n) 0x2000000 | n

section			.bss
	buffer		resb		BUFF_SIZE

section			.text
	global	_ft_cat

_ft_cat:
	push		rbp
	mov			rbp, rsp

__read:
	push		rdi
	mov			rsi, buffer
	mov			rdx, BUFF_SIZE
	mov			rax, SYSCALL(3) ; read
	syscall
	jc			end
	cmp			rax, 0
	jle			end
	mov			rdi, 1
	mov			rdx, rax
	mov			rax, SYSCALL(4) ; write
	syscall
	pop			rdi
	jmp			__read

end:
	mov		rsp, rbp
	pop		rbp
	ret
