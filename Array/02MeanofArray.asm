LXI H, 0F000H
MVI B, 00H
MVI C, 00H

LOOP: MOV A, M
      ADD B
      MOV B, A
      INX H
      INR C
      XRA A
      MVI A, 04H
      SUB C
      JNC LOOP
MOV D, B
MVI B, 00H
MVI E, 05H
JMP DIV_LOOP

DIV_LOOP: MOV A, D
               CMP E
               JC END
               SUB E
               MOV D, A
               INR B
               JMP DIV_LOOP
      END: MOV A, B
           STA 0F005H
           HLT     
