.MODEL SMALL
.STACK 100H 
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H         ;INPUT NUMBER
    MOV BL,AL
    
 TOP:
    MOV AH,2
    MOV DL,BL
    INT 21H
    DEC BL
    
    CMP BL,'0'
    JE EXIT
    
    JMP TOP
EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN