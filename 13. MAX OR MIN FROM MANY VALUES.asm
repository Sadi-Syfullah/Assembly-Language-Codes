.MODEL SMALL
.STACK 100H 
.DATA

MSG DB 'ENTER AN INPUT: $'
MSG1 DB ' $'
MSG2 DB 'MAXIMUM VALUE: $'
VAR DB 1
RES DB 0

.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
 L1:
    CMP BL,VAR
    JL L2
    INC VAR
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    CMP BH,RES
    JL L1
    MOV RES,BH
    JMP L1
    
 L2:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,RES
    INT 21H

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN