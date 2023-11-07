// sums 2 numbers
// usage: put the values that you wish to add in RAM[0] and RAM[1]
// RAM 2 become RAM[0] + RAM[1]

	@R0
	D=M

	@POSITIVE
	D;JGT

	@R1
	M=0
	@END
	0;JMP

	(POSITIVE)
	@R1
	M=1

	(END)
	@END
	0;JMP
