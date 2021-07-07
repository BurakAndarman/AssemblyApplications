.model tiny
.code
.startup
       
mov ax,0h       
mov [200h],0FAC7h
mov ax,[200h] 
and ax,0F00Fh

mov [300h],ax

ret
.exit
end

