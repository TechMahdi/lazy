Task 04
Write a program to:
a. Read two decimal digits whose sum is less than 10,
Task No – 04
.model small
.stack 100h
.data
msg db "The Sum of $"
msg2 db " and $"
msg3 db " is $"
.code
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov bl,al
mov ah,1
int 21h
mov cl,al
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
mov ah,2
mov dl,bl
int 21h
mov ah,9
lea dx,msg2
int 21h
mov ah,2
mov dl,cl

int 21h
exit:
mov ah,4ch
int 21h
main endp
end main
