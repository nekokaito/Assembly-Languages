.model small
.stack 100h
.code

MAIN PROC
    
    MOV AH,1   ;AH 1 MEAN INPUT
    INT 21H
    MOV BL,AL
    
    
    MOV AH,2
    MOV DL,BL     ; OUTPUT CODE
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP


END MAIN
    
    
    
    