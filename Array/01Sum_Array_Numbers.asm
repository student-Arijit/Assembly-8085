;Write a program to read and display n numbers using an array.
;suppose n = 5
;Data is from F000H-F004H

LXI H, 0F000H
MVI B, 00H
MVI C, 00H

LOOP: MOV A, M
      ADD B
      MOV B, A
      INX H
      INR C
      XRA A
      MVI A, 05H
      SUB C
      JNC LOOP
HLT
