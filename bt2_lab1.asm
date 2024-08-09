.MODEL SMALL
.STACK 100H
.DATA  
        CHUOI1 DW 10,'NHAP MOT KI TU: $'
        CHUOI2 DW 10,13,'Ky tu lien truoc: $'
        CHUOI3 DW 10,13,'Ky tu lien sau: $'
.CODE 
        MOV AX,@DATA
        MOV DS,AX    
        ;XUAT CHUOI
        MOV DX,OFFSET CHUOI1
        MOV AH,9
        INT 21H
        ;NHAP KI TU
        MOV AH,1  
        INT 21H 
        MOV CL,AL  
        ;XUAT CHUOI 2
        MOV DX,OFFSET CHUOI2
        MOV AH,9
        INT 21H  
        ;XUAT GIAM
        MOV DL,CL
        DEC DL
        MOV AH,2
        INT 21H   
        ;XUAT TANG
        MOV DX,OFFSET CHUOI3
        MOV AH,9
        INT 21H
        
        ;XUAT TANG
        MOV DL,CL 
        INC DL
        MOV AH,2
        INT 21H
END