Task No – 03 ( a)
a. Read a character, and display it at the next position on the same
line.
.model small
.stack 100h
.data msg db "Type a Character: $"
msg2 db "Next Character: $"
.code
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h
mov ah,1
int 21h
inc al
mov bl,al

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
exit :
mov ah,4ch
int 21h
main endp
end main
