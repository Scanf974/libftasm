section			.text
	global	_ft_strdup
	extern	_malloc
	extern	_ft_strcpy
	extern	_ft_strlen

_ft_strdup:
	push 	rbp
	mov 	rbp, rsp

	mov 	rbx, rdi
	call 	_ft_strlen
	mov 	rdi, rax
	add 	rdi, 1
	call 	_malloc
	test	rax, rax
	jz 		end
	mov 	rdi, rax
	mov 	rsi, rbx
	call 	_ft_strcpy

end:
	leave
	ret
