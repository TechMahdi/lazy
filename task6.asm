

Task 06
Write a program to read one of the hex digits A-F, and display it on the next
line in decimal.
Sample execution:
Enter a Hex Digit: C
In Decimal it is: 12

Task No – 06
.model small
.stack 100h
.data
msg db "Enter a Hex Digit: $"
msg2 db "In Decimal it is: $"
.code
main proc
mov ax,@data
mov ds,ax
mov ah,9
lea dx,msg
int 21h
mov ah,1
int 21h
sub al,41h
add al, 10h
mov bl,10h
xor ah,ah
div bl
mov bl,al
add bl,30h
mov bh,ah
add bh,30h

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
mov ah,2
mov dl,bh
int 21h
exit:
mov ah,4ch
int 21h
main endp
end main
