assume CS:code, DS: data

begin:

code segment      
   
mov AX, data
mov DS, AX      

mov AX, a
not AX
and AX, b
mov y, AX

mov AX, d
not AX
and AX, c 

or AX,y
mov y, AX

mov AX, 4c00h
int 21h
code ends

data segment
a dw 66
b dw 51
c dw -28
d dw 12
y dw 0
data ends

end begin