.MODEL SMALL
.STACK 100H 
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H         ;INPUT NUMBER
    MOV BL,AL
    
    MOV CL,'1'
    
 TOP:
    MOV AH,2
    MOV DL,CL
    INT 21H
    INC CL
    
    CMP CL,BL
    JG EXIT
    
    JMP TOP
EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN