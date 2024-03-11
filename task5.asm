Task 05
Write a program to:
a. Prompt the user
b. Read first, middle, and last initials of a person's name, and then
c. Display them down the left margin.

Sample execution:
Enter Three Initials: FRS
F
R
Task No – 05
.model small
.stack 100h
.data
msg db "Enter Three Initials: $"
.code
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h
mov ah,1
int 21h
mov bl,a

mov ah,1
int 21h
mov cl,al
mov ah,1
int 21h
mov ch,al
;new line
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
;new line end
mov ah,2
mov dl,bl
int 21h
;new line
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
;new line end

mov ah,2
mov dl,cl
int 21h
;new line
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h
;new line end
mov ah,2
mov dl,ch
int 21h
exit:
mov ah,4ch
int 21h
main endp
end main
