
.model small lea dx,msg
.stack 100h int 21h
.data msg db "Please insert a number: $" mov ah,1
msg2 db "Multiplied value: $" int 21h
.code sub al,30h
main proc mul bl
mov ax,@data mov bl,al
mov ds,ax add bl,30h
mov ah,9 ;new line
lea dx,msg mov ah,2
int 21h mov dl,0ah
mov ah,1 int 21h
int 21h ;new line end
sub al,30h
mov bl,al mov ah,9
;new line lea dx,msg2
mov ah,2 int 21h
mov dl,0dh mov ah,2
int 21h mov dl,bl
mov dl,0ah int 21h
int 21h mov ah,4ch
;new line end int 21h
mov ah,9 main endp
end main
