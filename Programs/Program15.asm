
;Add the contents of memory locations 200h and 2001h and place the result in the memory locations 2002h 2003h.


	LXI H,2000H		;HL Points 2000H
	MOV A,M			;Get the first operand
	INX H			;HL points to 2001H
	ADD M			;Add second operand
	INX H       	;HL points to 2002H
	MOV M,A			;Store lower byte of result at 2002H
	MVI A,00		;Initialize higher byte result with 00H
	ADC A			;Add carry in the higher byte
	INX H			;HL points 2003h
	MOV M,A			;Store the higher nbyte of result at 2003H
	HLT				;Terminate the program

