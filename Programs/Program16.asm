
;Program to shift an eight bit data four bits right.Assume that data is in register C
	
	MVI C,20H		;Move 20H into C register
	MOV A,C			;Move the Contents into the accumulator
	RAR				;Shift right 
	RAR
	RAR
	RAR
	MOV C,A 		;move the result in C
	HLT				;Terminate the program


