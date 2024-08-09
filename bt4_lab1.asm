.MODEL SMALL
.STACK
.DATA
    CHUOI1 DW 13,10,"Nhap 1 ky tu:$"   
    CHUOI2 DW 13,10,"Ky tu dung truoc: $"
    CHUOI3 DW ," ,Ky tu da nhap: $"    
    CHUOI4 DW ," ,Ky tu dung sau: $" 

    
.CODE
    MOV AX,@DATA
    MOV DS,AX
    ;XUAT CHUOI 1
    MOV DX,OFFSET CHUOI1
    MOV AH,9
    INT 21H
    ;NHAP 1 KT
    MOV AH,1
    INT 21H
    MOV CL,AL 
    ;MOV CL,2
    ;XUAT CHUOI 2
    MOV DX,OFFSET CHUOI2     
    MOV AH,9
    INT 21H  
    ;XUAT TRUOC   
    MOV DL,CL
    DEC DL
    MOV AH,2
    INT 21H
    ;XUAT CHUOI 3
    MOV DX,OFFSET CHUOI3     
    MOV AH,9
    INT 21H          
    ;XUAT DA NHAP
    MOV DL,CL
    MOV AH,2
    INT 21H
    ;XUAT CHUOI 4
    MOV DX,OFFSET CHUOI4    
    MOV AH,9
    INT 21H 
    ;XUAT SAU   
    MOV DL,CL
    INC DL
    MOV AH,2
    INT 21H
END