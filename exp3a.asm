datahere segment
a dw 1500h
b dw 1502h
c dw 1504h
d dw 1506h
datahere ends
codehere segment
assume cs: codehere, ds:datahere
    ORG 1000h
    MOV AX,[a]
    MUL [b]
    MOV [c],AX
    MOV[d],DX
    HLT
codehere ends
End