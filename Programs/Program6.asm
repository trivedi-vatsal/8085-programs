;Subtract the contents of memory locations 2001H from the memory location 2000H and place the result in memory location 2002H

LXI H,2000H	;HL points 2000h
MOV A,M		;Get first operand
INX H		;HL points 2001H
SUB M		;Subtract second operand
INX H		;HL points 2002H
MOV M,A		;Store result at 2002H
HLT		;Terminate program execution