;Two digit BCD number is stored in memory location 2200H. Unpack the BCD number and store the two digit in memory locations 2300H and 2301H such that memory location 2300H will have lower BCD digit

LDA 2200H	;get the packed BCD number
ANI 0F0H	;mask the lower nibble
RRC		
RRC
RRC
RRC		;adjust higher BCD digit as a lower digit
STA 2301H	;store the partial result
LDA 2200H	;get the original BCD number
ANI 00FH	;mask the higher nibble
STA 2201H	;store the result
HLT 		;terminate program execution