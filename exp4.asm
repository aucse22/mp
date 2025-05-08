datahere segment
A1 dw 1100h
datahere ends
codehere segment
assume cs:codehere , ds: datahere
        ORG 1000h
        MOV SI,1200h
        MOV DX,0FFFFh
        MOV AH,0FFh
    L1: INC DX
        MOV AL,[SI]
        INC SI
        CMP AH,AL
        JNZ L1
        MOV [A1],DX
        HLT
codehere ends
end