;Find the 1's complement of the number stored at memory location 2200H and store the complemented number at memory location 2300H

LDA 2200H	;Get the number
CMA		;Complement number 
STA 2300H	;Store the result
HLT		;Terminate program execution