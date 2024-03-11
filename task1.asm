Take a character input and display it. Display the message "Please insert a
character: " when taking an input.

.model small
.stack 100h
.data msg db "Please insert a character: $"
.code
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h
mov ah,1
int 21h
mov bl,al
;new line
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
;new line end
mov dl,bl
int 21h

mov ah,4ch
int 21h
main endp
end main
