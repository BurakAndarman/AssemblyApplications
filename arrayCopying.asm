.model small
.stack 64
.data

dizi1 db 10 dup (053)

dizi2 db 50 dup (?)

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
         
copyRoot:    

mov al,dizi1[di]
mov dizi2[si],al

mov dl,dizi2[si]
int 21h             
             
inc si
dec di

loop copyRoot

mov cx,10 
mov ax,0h
      
              
exit:ret  
copy endp


end


