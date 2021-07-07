org 100h

mov ax,000Ch
mov dx,ax
mov [150h],2h
div [150h]
cmp ah,0h
jz  notPrime
mov ax,dx
mov cx,ax
dec cx



control:

cmp cx,01h
jz  prime
mov [151h],cx
div [151h]
cmp ah,0h
jz  notPrime
mov ax,0000h
mov ax,dx


loop control   
   
    
    
prime:

mov bx,05h
jmp end   


notPrime:  

mov bx,07h

end:       

ret