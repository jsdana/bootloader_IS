org 0x7e00
jmp 0x0000:start

%include "teste.asm"
%include "data.asm"
%include "game.asm"

data:
	
	;Dados do projeto...

start:
    xor ax, ax
    xor bx, bx
    xor cx, cx
    xor dx, dx
    mov bx, 15
    mov ds, ax
    mov es, ax

    call _clear

    mov ah, 00h
        mov al, 10h
        int 10h

    
    ;Código do projeto...

    call _printSprite

   

jmp $