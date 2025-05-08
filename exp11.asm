codehere segment
assume cs: codehere
    ORG 1000h 
    MOV AL, 36H 
    OUT 16H, AL 
    MOV AL ,08H 
    OUT 10H , AL 
    XOR AL ,AL 
    OUT 10H ,AL 
    MOV AL ,40H 
    OUT 12H, AL 
    MOV AL, 37H 
    OUT 12H, AL
    MOV DI ,1300H 
    MOV CX,[DI] 
    MOV SI,1500H 
    MOV DI,1600H
TX: IN AL, 0AH
    AND AL, 04H 
    JZ TX
    MOV AL, [SI] 
    OUT 08H,AL
LI: IN AL, 0AH
    AND AL ,02H 
    JZ LI
    JN IN AL, 08H 
    MOV [DI],AL 
    INC SI
    INC DI 
    LOOP TX 
    HLT
codehere ends
end
