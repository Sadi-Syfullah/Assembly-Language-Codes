.MODEL SMALL
.STACK 100H 
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H         ;INPUT NUMBER
    MOV BL,AL
    
    SUB BL,48
 
 LOOP:
    MOV CX,0
    MOV CL,BL
    
    MOV AH,2         ;PRINT
    MOV DL,'*'
    
    TOP:
    INT 21H
    LOOP TOP

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN