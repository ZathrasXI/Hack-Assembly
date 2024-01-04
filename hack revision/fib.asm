//fibonacci
// starting at R30 create $R1 long fibonacci sequence

(start)

@R1
D=M
//wait for R1 to be > 0
@start
D;JLE

@2
D=D-A
@counter
M=D

//starting address
@30
D=A
@addr
M=D
//0th number == 0
A=D
M=0
//1st number == 1
@addr
MD=M+1
A=D
M=1

//2nd number and onwards
//n = (n-1 + n-2)
(fibonacci)
//get value from prev addr
//use tmp as a holder
@addr
D=M-1
A=D
D=M
@tmp
M=D
//get value from current addr
@addr
D=M
A=D
D=M
@tmp
MD=M+D
//inc addr, then populate with $tmp
@addr
M=M+1
A=M
M=D

@counter
MD=M-1

@fibonacci
D;JGT


(end)
@end
0;JMP






