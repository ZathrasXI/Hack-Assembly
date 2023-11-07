//R2 = R0 * R1
// i = 0
// while i < R1
//   R2 = R2 + R0

(LOOP)
    @i 
    // M=0
    D=M
    @R1 
    // if R1 - i = 0; exit loop
    D=D-M
    @STOP
    D;JEQ


    // else R2 = R2 + R0
    @R0
    D=M
    @R2
    M=M+D

    @i 
    M=M+1
    @LOOP
    0;JMP

(STOP)
@R2
D=M