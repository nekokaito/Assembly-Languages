.model small
.stack
.code

main proc
   
   ; 4 input 
    mov ah,1
    int 21h
    mov bl, al
    int 21h
    mov bh, al
    int 21h
    mov cl, al
    int 21h
    mov ch, al
     
    ; new line 
    mov ah,2
    mov dl,10
    int 21h
    mov dl, 13
    int 21h
    
    ; 4 print
    mov dl, bl
    int 21h
    mov dl, bh
    int 21h
    mov dl, cl
    int 21h
    mov dl, ch
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp

end main
    



