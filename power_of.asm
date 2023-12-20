//2 power of R0
@R1
M=1
D=M

//set counter
@R0
D=M
@counter
M=D

@total
M=1

(power_of)
@total
D=M
M=D+M

@counter
M=M-1
D=M

@power_of
D;JGT

@total
D=M
@R2
M=D

(end)
@end
0;JMP
