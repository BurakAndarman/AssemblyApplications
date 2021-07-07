.model tiny
.code
.startup

mov cx,100
mov si,0h
mov [150h],5

control:
         
mov ax,cx         
div [150h]
cmp ah,0h
jnz notDivisible

call func

notDivisible:
             
loop control             

ret
.exit

func proc
              
mov ax,cx
mul cx
                            
mov [1200h+si],ax
add si,2    

ret
func endp

end




