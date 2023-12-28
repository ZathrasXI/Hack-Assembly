// collatz conjecture, until answer is 1, 
// if odd multiply by 3 + 1
// if even divide by 2
// first number goes in RAM[32], and each number goes in the next address

@0
D=M

//init address pointer
@32
D=A
@next
M=D
// init starting address with *R0
@0
D=M
@next
A=M
M=D

(collatzify)
//odd or even
@next
A=M

// equal to 1?
@one
0;JMP

// odd or even
(odd_even)
@next
A=M
D=M
@1
M=A
D=D&M
@odd
D;JNE
@even
D;JEQ

(increment)
@next
M=M+1
A=M
M=D

@collatzify
0;JMP

//end of program
(end)
@end
0;JMP


//3n + 1 when number is odd
(odd)
@next
A=M
D=M
@num
M=D
//mult 3 == add 2 * num to num
@2
D=A
@mult_count
M=D

(mult_3)
@next
A=M
D=M
@num
M=M+D

@mult_count
M=M-1
D=M
@mult_3
D;JGT
//plus 1
@num
M=M+1
D=M
@increment
0;JMP

//half number, when number is even
(even)
@divisor
M=0
@next
A=M
D=M
@num
M=D
(half)
@2
D=A
@divisor
M=M+1
@num
M=M-D
D=M

@half
D;JGT
@divisor
D=M
@increment
0;JMP


@increment
0;JMP

(one)
@1
M=A
D=D-M
@end
D;JEQ
@odd_even
0;JMP





