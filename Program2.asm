;Store the data byte 52h into memory location 2000H


LXI H, 2000H	;Load HL with 2000h
MVI M, 52H	;store 52h in memory location pointed by HL register pair(200h)
HLT		;Terminate program execution