assume CS:code, DS: data    
   
begin: 

code segment         
        
        
        
         
    start:
    
    mov ax, data
    mov DS, ax 
        
    mov ax, rightborder
    mov bx, leftborder
    sub ax, bx   
    add ax, 1
    mov cx, ax             
               
        
       
       
    main_loop:    
               
    cmp x,0          
    
    jl if_x_negative
    je if_x_zero
    jg if_x_positive
           
           
           
    
    main_loop_increment: 
    add x,1 
    jmp main_loop
        
        
         
        
    if_x_negative:
    
    mov ax, c
    mov bx, x
    imul bx
    mov bx, b
    add ax, bx
    mov bx, a
    idiv bx   
    
    mov y,ax      
    
    loop main_loop_increment     
          
                 
                 
    
    if_x_zero: 
    
    mov ax, b
    mov bx, c
    imul bx
    add ax, 5
    mov bx, -1
    imul bx   
    
    mov y,ax   
    
    loop main_loop_increment
             
             
      
    
    if_x_positive:
    
    mov ax, d
    mov bx, d
    imul bx
    mov bx, x
    imul bx
    mov bx, c
    add bx, 3
    idiv bx    
    
    mov y,ax

    loop main_loop_increment
         
                  
code ends 
           
           
data segment 
     
    a dw 4
    b dw -3
    c dw 6
    d dw 10
    x dw -4
    y dw 0
    leftborder dw -4
    rightborder dw 4  
    
data ends


     end begin
                                                           
                                                         
                                                         
