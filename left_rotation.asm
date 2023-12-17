(start)

//wait for shift value to be greater than 0
@R1
D=M
@start
D-1;JLT

// i
@i
M=0

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

//increment i
(inc_i)
@i
M=M+1
D=M

//i - R1
@R1
D=D-M

//loop when i < R1
@rotate_left
D;JLT

(end)
@end
0;JMP

(rotate_neg_num)
@R2
D=M
M=M+D
M=M+1
@inc_i
0;JMP

