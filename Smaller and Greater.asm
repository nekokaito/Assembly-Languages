.MODEL SMALL
.STACK 
.CODE
.DATA


MS1 DB 'Greater $'
MS2 DB 'smaller $'

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    SUB BL, 48 
    
    
    CMP BL,5
    JG  GREAT
    
    
    LESS:
    LEA DX, MS2
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    
    
    
    GREAT:
    LEA DX,MS1
    MOV AH, 9
    INT 21H
    
    
    
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP

END MAIN
    
    
    