codehere segment
assume cs: codehere
    ORG 1000h  
    MOV AL , 00H 
    OUT 02H , AL 
    MOV AL , 00H 
    OUT 02H , AL 
    MOV AL , 90H 
    OUT 02H , AL 
    MOV CL , 05H 
    MOV DI , 1100H
LOOP: MOV AL, [DI]
    OUT 00H , AL
    INC DI 
    DEC CL 
    JNZ LOOP 
    HLT
codehere ends
end    