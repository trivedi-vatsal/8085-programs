;Pack the two unpacked BCD numbers stored in memory locations 2200H and 2201H and store result in memory location 2300H. Assume the least significant digit is stored at 2200H

LDA 2001H	;Get the Most significant BCD digit
RLC
RLC
RLC
RLC		;adjust the position
ANI 0F0H	;make least significant BCD digit zero
MOV C,A 	;Store the partial result
LDA 2200H	;Get the lower BCD digit
ADD C		;add lower BCD digit
STA 2300H	;Store the result
HLT		;Terminate program execution

