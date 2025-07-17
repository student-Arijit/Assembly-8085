MVI D, 09H
MVI E, 02H
MVI B, 00H
LOOP: MOV A, D
      CMP E
      JC END
      SUB E
      MOV D, A
      INR B
      JMP LOOP
END: HLT
