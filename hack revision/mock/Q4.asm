//digital root sequence

// go to current address
// use value to calculate next value
// put value in next address


//starting address is 0
@addr
M=0

(next_address)
//for each number, until value == 1
//check if value == 1
@1
D=A
@addr
A=M
D=D-M
@end
D;JEQ

// init counter
@16
D=A
@counter
M=D
// init total
@total
M=0
@sum
M=0

//go to address
@addr
A=M
D=M
//copy value to work on
@tmp
M=D

//16 shifts left
(shifts)
@tmp
D=M

@plus_one
D;JLT

(double)
@tmp
D=M
MD=M+D

@counter
MD=M-1
//loop until 16 shifts complete
@shifts
D;JGT

//put value in next address
@sum
D=M
@addr 
M=M+1
A=M
M=D   

@next_address
D-1;JGT

(end)
@end
0;JMP

(plus_one)
@sum
M=M+1
@double
0;JMP

(one_bit_check)
