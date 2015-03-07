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
