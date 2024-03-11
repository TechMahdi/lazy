Task No – 02 ( SUBTRACTION )
Task 02
Perform addition/subtraction/division/multiplication by taking inputs from
the user. Note: Display appropriate messages when taking input and showing the
output.

model small mov dl,0dh
.stack 100h int 21h
.data msg db "Please insert a number: $" mov dl,0ah
msg2 db "Subtraction value: $" int 21h
.code ;new line end
main proc mov ah,9
mov ax,@data lea dx,msg
mov ds,ax int 21h
mov ah,9 mov ah,1
lea dx,msg int 21h
int 21h mov cl,al
mov ah,1 ;new line
int 21h mov ah,2
mov bl,al mov dl,0dh
;new line int 21h
mov ah,2 mov dl,0ah
int 21h

//sesher dikhe 
;new line end
sub bl,cl
add bl,30h
mov ah,9
lea dx,msg2
int 21h
mov ah,2
mov dl,bl
int 21h
exit:
mov ah,4ch
int 21h
main endp
end main
