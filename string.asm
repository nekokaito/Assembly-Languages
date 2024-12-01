.model small
.stack
.data


neko db 'Neko Peko $'
peko db 'Peko sukona $'


.code

main proc
    
    mov ax, @data ; ax mean 16bit 
    mov ds, ax
    
    lea dx, neko ; lea mean 
    mov ah, 9
    int 21h
    
    
    mov ah, 2 ; output mode
    mov dl, 10 ; new line code
    int 21h
    mov dl, 13
    int 21h
    
    
    lea dx, peko
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp

end main
    
