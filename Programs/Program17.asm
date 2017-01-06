;Program to find 2's complement of 16-bit number

	LDA 2000H	;Load accumulator with contents of 2000h
	CMA			;Complement the lower byte
	ADI 01H		;Add 01H to the accumulator
	STA 4000H	;Store the accumulator data to 4000h location
	LDA 2001H	;Load the accumulator with data from memory loaction 2001H
	CMA			;Complement the higher byte
	ADI 00H		;Add with carry to accumulator
	HLT			;Terminate the program execution