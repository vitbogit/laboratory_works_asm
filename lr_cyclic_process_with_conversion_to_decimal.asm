assume CS:code, DS: data

begin:    

code segment    
    
mov AX, data
mov DS, AX

mov AX, leftborder
mov x, AX

L:  

    cmp x, 0
    JL y1
    JE y2
    JG y3
    
    y1:        
    
        mov ax, c
        mov bx, x
        imul bx
        mov bx, b
        add ax, bx
        mov bx, a
        idiv bx   
        mov y,ax  
        
        jmp next        
               
    y2:       
    
        mov ax, b
        mov bx, c
        imul bx
        add ax, 5
        mov bx, -1
        imul bx   
        mov y,ax  
        jmp next     
             
    y3:
    
        mov ax, d
        mov bx, d
        imul bx
        mov bx, x
        imul bx
        mov bx, c
        add bx, 3
        idiv bx    
        mov y,ax
        
        jmp next      

    next:      
    
        call printNumber   
        
        inc x
        
        mov AX, rightborder
        cmp x, AX
        
        JLE L      
        
        mov AX, 4c00h
        int 21h    
        
code ends

printNumber proc   
    
    lea SI, w1
    lea DI, w2
    mov CX, 0h
    mov DX, 0h
    
    cmp AX, 0
    JNL printL1
    mov [DI], '-'         
    inc CX
    add DI, 1  
    neg AX
    
    printL1:   
    
        div ten 
        add DL, 30h
        mov [SI], DL
        mov DX, 0
        add SI, 1  
        inc CX
        cmp AX, 0
        
        jg printL1
        
    sub SI, 1      
    
    printL2:
        mov AL, [SI]
        mov [DI], AL
        sub SI, 1
        add DI, 1
        cmp SI, offset w1
        jge printL2
        
    add CL, 3
    mov [DI], 13
    add DI, 1
    mov [DI], 10
    add DI, 1
    mov [DI], '$'
    
    mov AH, 09h 
	mov DX, offset w2
	int 21h 
	
	add SI, CX  
	
	printL3:    
	
	    mov [SI], 0h
	    mov [DI], 0h
	    sub DI, 1
	    sub SI, 1
	    cmp SI, offset w1
	    jge printL3   
	    
	ret   
	
printNumber endp

data segment     
    
    a dw 4
    b dw -3
    c dw 6
    d dw 10
    leftborder dw -4
    rightborder dw 4  
    x dw 0
    y dw 0  
    
    ten dw 10
    w2 db 32 dup (0)
    w1 db 32 dup (0)  

data ends

end begin
