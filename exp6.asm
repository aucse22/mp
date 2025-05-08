datahere segment
A1 dw 1100h
datahere ends
codehere segment
assume cs: codehere, ds: datahere
        ORG 1000h
        MOV CX, 07h
    L1: MOV DI, CX
        MOV BX, 00h
    L2: MOV AX, A1 [BX]
        CMP AX, A1 [BX + 2]
        JNC PROCEED
        XCHG AX, A1 [BX + 2]
        MOV A1 [BX], AX
    PROCEED: ADD BX, 2
        LOOP L2
        NOP
        MOV CX, DI
        LOOP L1
        HLT
codehere ends
end