;Add the contents of memory locations 2000H and 2001H and place the result in memory location 2002H

LXI H,2000H	;HL points 2000h
MOV A,M		;Get first operand
INX H		;HL points 2001H
ADD M		;Add second operand
INX H		;HL points 2002H
MOV M,A		;Store result at 2002H
HLT		;Terminate program execution