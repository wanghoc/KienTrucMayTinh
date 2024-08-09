.MODEL SMALL                                           ;KIEU CHUONG TRINH
.STACK                                                 ;KHAI BAO NGAN XEP
.DATA                                                  ;PHAN DU LIEU
    n        DB     10                                 ;DB KIEU BYTE
    mang     DB     4,5,6
    chuoi1   DW     'CDI BAO', '$'
    chuoi2   DW     13,10 'Hello world',10, '$'        ;13 LA KI TU DAU DONG;10 LA KI TU XUONG DONG;'$' LA KET THUC CHUOI <MAC DINH DA CO>
.CODE                                                  ;PHAN LENH
    MOV AH, 9                                          ;DUA GIA TRI 0 VAO THANH GHI <AH>
    MOV BX, SEG chuoi2                                 ;COPY DOAN <SEGMENTS> VAO THANH GHI BX
    MOV DS, BX
    MOV DX, OFFSET chuoi1                              ;OFFSET <BUDAP>
    INT 21H                                            ;THUC HIEN NGAT 21
END                                                    ;LENH KET THUC