.model small
.stack
.data

a db 'Hello World $'

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9 ; string output 
    lea dx, a ; string output 
    int 21h   ; string output 
    
    mov ah,4ch ; endline
    int 21h
    main endp

end main