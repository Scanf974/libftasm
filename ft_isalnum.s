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

section .text
	global	_ft_isalnum
	extern	_ft_isdigit
	extern	_ft_isalpha

_ft_isalnum:
	push	rbp
	mov		rbp, rsp

	call	_ft_isalpha
	cmp		rax, 1
	je		yes
	call	_ft_isdigit
	cmp		rax, 1
	je		yes

	mov		rax, 0

	leave
	ret

yes:
	mov		rax, 1
	leave
	ret

