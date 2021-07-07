.model small
.stack 64
.data

array1 db 10 dup (053)

array2 db 50 dup (?)

.code
.startup
 
mov ax,0h 
mov bx,05h
mov si,00h
mov cx,10
mov dx,0h

call copy
      
.exit      
ret
       
       
copy proc
          
cmp bx,00h
jz exit
dec bx
call copy
              
              
mov ah,02h
mov di,09h         
         
copySource:    

mov al,array1[di]
mov array2[si],al

mov dl,array2[si]
int 21h             
             
inc si
dec di

loop copySource

mov cx,10 
mov ax,0h
      
              
exit:ret  
copy endp


end


