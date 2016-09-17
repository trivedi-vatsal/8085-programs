;Find the 2's complement of the number stored at memory location 2200H and store the complemented number at memory location 2300H

LDA 2200H	;get the number
CMA		;Complement the number
ADI 01H		;add one in the number
STA 2300H	;store the result
HLT		;terminate program execution