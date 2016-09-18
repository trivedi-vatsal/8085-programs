;Add the 16-bit number in memory location 2000H and 2001H to the 16-bit number in memory loactions 2002H and 2003H. The most significant eight bits of the two numbers to be added are in memory locations 2001H and 2003H. Store the result in memory locations 2004H and 2005H with the most significant byte in memory location 2005H

LHLD 2000H	;Get the first 16-bit number in HL
XCHG		;save first 16-bit number in DE
LHLD 2002H	;get second 16-bit number in HL
DAD D		;add DE and HL
SHLD 2004H	;store the 16-bit result in memory locations 2004H and 2005H
HLT		;terminate the program execution