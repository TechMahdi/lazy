

Task No – 02 ( DIVISION )
.model small
.stack 100h
.data msg db "Please insert a number: $"
msg2 db "Quotient value: $"
.code
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h
mov ah,1
int 21h
sub al,30h
mov bl,al
;new line
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
;new line end
mov ah,9
lea dx,msg

int 21h
mov ah,1 exit:
int 21h mov ah,4ch
sub al,30h int 21h
xor ah,ah main endp
mov cl,al end main
mov al,bl
mov bl,c
div bl
mov bl,al
add bl,30h
;new line
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
;new line end
mov ah,9
lea dx,msg2
int 21h
mov ah,2
mov dl,bl
int 21h
