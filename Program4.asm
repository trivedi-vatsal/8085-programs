;Exchange the contents of memory locations 1000H and 2000H

LXI H,1000H	;initlize HL register pair as a pointer to memory location 1000h
LXI D,2000H	;initialize DE register pair as a pointer to memory location 2000h
MOV B,M		;get the contents of memory location 1000h into B register
LDAX D		;get the contents of memory location 2000h into A register
MOV M,A		;store the contents of A register into memory location 1000h
MOV A,B		;copy the contents of B register into accumulator
STAX D		;store the contents of A register into memory location 2000H
HLT		;terminate program execution