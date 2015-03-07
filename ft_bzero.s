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

section	.data

section	.text
	global	_ft_bzero

_ft_bzero:
	push	rbp				; push base pointer au dessus de la stack
	mov		rbp, rsp		; tu met laddresse de rsp dans rbp
	xor		rcx, rcx		; on met rcx a 0
	mov 	rbx, rdi 		; mov de la chaine dans rbx

loop:
	cmp		rcx, rsi		; on compare le compteur et la taille rsi
	je		end
	mov		byte [rbx], 0	; on prend les byte premier bit de rbx, et les remplace par 0
	inc		rbx				; on increment le pointeur de la chaine
	inc		rcx				; i++
	jmp		loop			; si cest pas egale on jmp a loop

end:
	leave
	ret
