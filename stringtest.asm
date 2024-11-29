.model small
.stack
.data
.code

a db 'Adil $'
b db '22210276 $'

main proc
    
    mov ax,@data
    mov ds, ax   ; data segment
    
    lea dx, a
    mov ah, 9
    int 21h
    
    lea dx, b
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp

end main