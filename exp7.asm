codehere segment
assume cs: codehere
    ORG 1000h
    MOV SI, 100Eh
    MOV DI, 110Eh
    MOV CX, 0Ah
    CLD
MOVE: MOVSB
    Loop MOVE
    HLT
codehere ends
end
