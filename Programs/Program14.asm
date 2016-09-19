;Calculate the sum of series of numbers. The length of series is in memory location 2200H and the series itself begns from memory location 2201H
;Assume the sum to be 8 bit numberso you can ignore carries. Store the sum at memory location 2300H.

	LDA 2200H	
	MOV C,A		;initialize the counter
	SUB A		;sum=0
	LXI H,2201H	;initalize pointer

BACK:	ADD M		;SUM = SUM +data
	INX H		;Increment pointer
	DCR C		;decrement poniter
	JNZ BACK	;if Counter not = 0 repeat
	STA 2300H	;store sum
	HLT 		;terminate program execution