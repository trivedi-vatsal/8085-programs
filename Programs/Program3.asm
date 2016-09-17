;Exchange the contents of memory locations 1000H and 2000H

LDA 1000H	;Get the contents of memory location 1000h into accumulator
MOV B,A		;save the contents in B register
LDA 2000H	;get the contents of memory location 2000h into accumulator
STA 1000H	;store the contents of accumulator at address 1000h
MOV A,B		;get the saved contents back into A register	
STA 2000H	; store the contents of accumulator at address 2000h
HLT		;terminate program exection