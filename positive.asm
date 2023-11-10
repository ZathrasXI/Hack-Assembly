// jump to @4 if number in R0 is positive

@R0
D=M

@POSITIVE
D;JGT


@NEGATIVE
D;JLT


(POSITIVE)
@R1
M=D


(NEGATIVE)
@R10
M=D
