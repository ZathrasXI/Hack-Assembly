//RAM[2] = RAM[0] + RAM[1]
@R0
D=M
@R2
M=D
@R1
D=M
@R2
MD=M+D

//if RAM[2] is positive,multiply by -1
@mult_m1
D;JGT
//bitwise or RAM[1] with RAM[2]
(OR)
@R1
D=M
@R2
M=M|D

(end)
@end
0;JMP

(mult_m1)
@R2
M=!M
M=M+1
@OR
0;JMP
