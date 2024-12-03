.model  small
.stack 
.code

main proc
    
    ;input
    mov ah,1  
    int 21h     
    mov bl,al
       
       
   ; new line   
    mov ah,2
    mov dl,0ah ; 0ah =  10
    int 21h
    mov dl,0dh   ; 0dh =  13
    int 21h
    
    ; output
    mov ah,2
    mov dl,bl
    int 21h
    
    ;end
    mov ah, 4ch
    int 21h
    main endp

end main
    
   