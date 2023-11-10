// print one pixel when key is pressed

(start_program)
@KBD
D=M

@key_press
D;JGT

@start_program
0;JMP

(key_press)
@SCREEN
M=1

@start_program
0;JMP

