.MODEL SMALL
.STACK
.CODE


MAIN PROC
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    
    MOV CL, '1'
    
    START:
    
   MOV AH, 2
   MOV DL, CL
   INC CL
   
   INT 21H
   
   
   CMP BL, CL
   JE EXIT
   JMP START
   
   
   EXIT:
   MOV AH, 4CH
   INT 21H
   MAIN ENDP

END MAIN
   