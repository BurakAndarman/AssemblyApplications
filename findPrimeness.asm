org 100h

MOV ax,000Ch
MOV dx,ax
MOV [150h],2h
DIV [150h]
CMP ah,0h
JZ  notPrime
MOV ax,dx
MOV cx,ax
DEC cx



control:

CMP cx,01h
JZ  prime
MOV [151h],cx
DIV [151h]
CMP ah,0h
JZ  notPrime
MOV ax,0000h
MOV ax,dx


loop control   
   
    
    
prime:

MOV bx,05h
MOV [180h],bx
JMP end   


notPrime:  

MOV bx,07h
MOV [180h],bx  

end:       

ret