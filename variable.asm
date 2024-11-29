.model small
.stack
.data
.code

v1 db 5
v2 db ?

main proc
  
  mov ax,@data
  mov ds, ax

  mov ah, 1
  int 21h
  mov v2, al

  mov ah, 2
  add v1, 48
  mov dl, v1
  int 21h
  mov dl, v2
  int 21h

  mov ah, 4ch
  int 21h
  main endp

end main


