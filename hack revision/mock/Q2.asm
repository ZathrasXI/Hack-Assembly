@24575
D=A
@max_addr
M=D

(program)
//fill screen black when KBD input is "O" followed by "M"

@O_then_M
0;JMP

@clear_screen
0;JMP


//fill screen black
//max address = 24575
(filler)
@SCREEN
D=A
@screen_addr
M=D

(fill)
//go to addresss and colour pixel black
@screen_addr
A=M
M=-1

//increment address
@screen_addr
MD=M+1

//go to loop if final address has not been filled
@max_addr
D=M
@screen_addr
D=D-M
@fill
D;JGE

@program
0;JMP

(O_then_M)
//O == 79, M == 77
@KBD
D=M
@79
D=D-A

@O_press
D;JEQ

@clear_screen
0;JMP

(O_press)
@KBD
D=M
@79
D=D-A
// if KBD == O, loop
@O_press
D;JEQ
// else if KBD == M, goto M
@2
D=D+A
@M_press
D;JEQ
// else restart listening for O press
@O_then_M
0;JMP

(M_press)
@KBD
D=M
@77
D=D-A
@filler
D;JEQ
@O_then_M
0;JMP


(clear_screen)
//set starting address
@SCREEN
D=A
@clear_addr
M=D

//iterate through screen
(loop)
@clear_addr
D=M
A=D
//set value to 0
M=0
@clear_addr
M=M+1
D=M

@max_addr
D=D-M
@loop
D;JLT

@O_then_M
0;JMP






