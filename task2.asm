Perform addition/subtraction/division/multiplication by taking inputs from
the user. Note: Display appropriate messages when taking input and showing the
output.
model small
.stack 100h
.data
msg db "Please insert a number: $"
msg2 db "Additon value: $"
.code
main proc
mov ax,@data
mov ds,ax

mov ah,9 mov ah,1
lea dx,msg int 21h
int 21h mov cl,al
;new line

mov ah,1
Int 21h mov ah,2
mov bl,al

mov dl,0dh
;new line int 21h
mov ah,2 mov dl,0ah
mov dl,0dh int 21h ;
int 21h ;new line end
mov dl,0ah add bl,cl
int 21h sub bl,30h
;new line end mov ah,9
mov ah,9 lea dx,msg2
lea dx,msg
Int 21h int 21h
mov ah,2
mov dl,bl
int 21h
exit:
mov ah,4ch
int 21h
main endp
