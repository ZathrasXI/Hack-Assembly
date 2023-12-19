(start)

//wait for shift value to be greater than 0
@R1
D=M
@start
D-1;JLT

//left rotations = 16 - right rotations
@16
D=A
@R1
D=D-M
@lefts
M=D

//load answer with start value
@R0
D=M
@R2
M=D

//double R0, R1 times, output stored in R2
(rotate_left)
@R2
D=M

// if MSB == 1, double value then plus 1
@rotate_neg_num
D;JLT

// else just double
@R2
M=M+D

//decrement lefts
(decrement_lefts)
@lefts
M=M-1
D=M

//loop while lefts > 0
@rotate_left
D;JGT

(end)
@end
0;JMP

(rotate_neg_num)
@R2
D=M
M=M+D
M=M+1
@decrement_lefts
0;JMP

