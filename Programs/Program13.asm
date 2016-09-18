;Subtract the 16-bit number in memory location 2002H and 2003H from the 16-bit number in memory loactions 2000H and 2001H. The most significant eight bits of two numbers are in memory locations 2001H and 2003H. Store the result in memory locations 2004H and 2005H with the most significant byte in memory location 2005H

LHLD 2000H	;Get the first 16-bit number in HL
XCHG		;save first 16-bit number in DE
LHLD 2002H	;get second 16-bit number in HL
MOV A,E		;Get the lower byte of the first number
SUB L		;subtract lower byte of the second number
MOV L,A		;store the result in L register
MOV A,D		;get the higher byte of the first number
SBB H		;subtract higher byte of second number with borrow
MOV H,A		;store the 16-bit result in memory locations 2004h and 2005h 
SHLD 2004H	;store the 16-bit result in memory locations 2004H and 2005H
HLT		;terminate the program execution