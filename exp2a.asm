datahere segment
A1 dw 1100h
A2 dw 1102h
A3 dw 1200h
datahere ends
codehere segment
assume cs:codehere, ds:datahere
    ORG 1000h
    MOV AX, [A1]
    ADD AX, [A2]
    MOV [A3], AX
    HLT
codehere ends
end