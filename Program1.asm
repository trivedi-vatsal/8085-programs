;Store the data byte 52h into memory location 2000H


MVI A, 52H	;Store 52H in the accumulator
STA 2000H	;Copy accumulator contents at address 2000h
HLT		;Terminate program execution