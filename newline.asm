.model small
.stack 100h
.code

 
 main proc
    
    mov ah,1
    int 21h
    mov bl, al ; al mean input  and bl mean a data  
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl, 13
    int 21h
    
    
    
    mov ah,2
    mov dl,bl   ; bl data copy to dl which mean output
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
 
 end main    
 




