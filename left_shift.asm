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
(shift_left)
@R2
D=M
M=M+D

//increment i
@i
M=M+1
D=M

//i - R1
@R1
D=D-M

//loop when i < R1
@shift_left
D;JLT
