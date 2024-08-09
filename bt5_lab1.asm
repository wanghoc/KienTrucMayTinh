.MODEL SMALL
.STACK
.DATA
    NHAP1 DW 13,10,"Nhap ky tu THU NHAT:$"                      
    NHAP2 DW 13,10,"Nhap ky tu THU HAI:$"   

    CHUOI1 DW 13,10,"Ky tu tong: $"

    
.CODE
    MOV AX,@DATA
    MOV DS,AX
    ;XUAT CHUOI 1
    MOV DX,OFFSET NHAP1
    MOV AH,9
    INT 21H
    ;NHAP 1 KT
    MOV AH,1
    INT 21H
    MOV CL,AL 
    ;XUAT CHUOI 2
    MOV DX,OFFSET NHAP2     
    MOV AH,9
    INT 21H  
    ;NHAP 1 KT
    MOV AH,1
    INT 21H
    MOV CH,AL   
    ;XUAT CHUOI 1
    MOV DX,OFFSET CHUOI1     
    MOV AH,9
    INT 21H   
    ;CONG 2 KT
    ADD CL,CH
    MOV AH,2
    INT 21H
END