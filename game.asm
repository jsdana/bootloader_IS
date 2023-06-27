_printSprite:
    mov si, obj
    lodsw
    mov dx, ax
    lodsw
    mov cx, ax

    mov si, null
    call _print_sprite

    mov di, null
    mov ax, dx
    stosw
    dec cx
    mov ax, cx
    stosw


_print_sprite:                   ; imprime um sprite (guardado em SI) na posição coluna=cx, linha= dx

	push dx
	push cx
	

	.loop:
		lodsb   
		cmp al,'0'
		je .fim

		cmp al,'.'	
		je .next_line

		.next_pixel:
			call _print_pixel
			inc cx
			jmp .loop	
		
		.next_line:	
			
			pop cx      		 ;reseta cx para o valor inicial, o começo de uma nova linha
			push cx

			inc dx
			lodsb
			jmp .next_pixel
		
		.fim:
			pop cx
			pop dx
			;call _sleep
			;popa			
			ret 


_print_pixel:      	  			; printa um pixel na posição coluna = dx , linha = dx
        mov ah, 0ch
        mov bh, 0
        int 10h
        ret