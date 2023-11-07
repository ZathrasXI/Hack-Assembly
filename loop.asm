// a for loop that iterates R1 times



(LOOP)
    @i
    M=M+1
    D=M 
    @R1
    D=D-M 
    @STOP
    D;JEQ
    @LOOP
    0;JMP

(STOP)
    @i
    D=M