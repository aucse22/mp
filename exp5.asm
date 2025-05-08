datahere segment
A1 dw 1100h
Sum dw 1200h
datahere ends
codehere segment
assume cs: codehere, ds: datahere
        ORG 1000h
        MOV CX, 05h
        MOV AX, 0
        MOV SI,AX
    L1: ADD AX, [A1+SI]
        ADD SI, 2
        LOOP L1
        MOV [Sum], AX
    HLT
codehere ends
end