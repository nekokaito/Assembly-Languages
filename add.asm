.MODEL SMALL
.STACK
.CODE

MAIN PROC
   MOV AH,1
   INT 21H
   MOV BL,AL
   INT 21H
   
   MOV CL, AL
  
   
   ADD BL, CL ; BL += CL
   
   MOV AH,2 
   SUB BL,48
   MOV DL, BL
   INT 21H
   
   MOV AH,4CH
   INT 21H
   MAIN ENDP

END MAIN
