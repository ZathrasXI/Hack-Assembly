//R1 = factorial of R0, 

@R0
D=M

@hi
M=D
@lo
M=D-1

(outer)
@lo
D=M

@load_answer
D-1;JEQ

@i
M=D

@hi
D=M
@tmp
M=D

(mult)
@tmp
D=M
@hi
M=M+D
@i
MD=M-1

@mult
D-1;JGT

@lo
MD=M-1

@outer
D;JGT

(load_answer)
@hi
D=M
@R1
M=D

(end)
@end
0;JMP
