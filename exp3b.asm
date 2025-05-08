datahere segment
a dw 1600h
b dw 1602h
c dw 1604h
d dw 1606h
datahere ends 
codehere segment 
assume cs:codehere, ds:datahere 
    org 2010h
    MOV AX ,[a] 
    DIV [b] 
    MOV[c],AX 
    MOV[d],DX 
    HLT
codehere ends 
end