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
    MOV AH, 9
    LEA DX, MS2
    INT 21H
    JMP EXIT
    
    
    
    
    GREAT:
    
    MOV AH, 9
    LEA DX,MS1
    INT 21H
    
    
    
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP

END MAIN
    
    
    