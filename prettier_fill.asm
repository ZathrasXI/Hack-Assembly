(start)
@i
M=0

//address variable
@SCREEN
D=A
@current_address
M=D

@21845
D=A
@word
M=D

//check for 'c' press
@67
D=A
@KBD
D=D-M
//flip word if 'c'
@flip_word
D;JEQ

//if not 'c', set D to word
@word
D=M


(print_screen)
@current_address
A=M
//print word
M=D


//update address
@current_address
M=M+1
D=M

// if on final address of screen 0x5fff
// check for key press
@24575
D=D-A
@start
D;JEQ

//increment i
@i
M=M+1
D=M



//flip word if i == 32
@32
M=A
D=D-M
@reset_i
D;JEQ

//else
@word
D=M


@print_screen
0;JMP


(flip_word)
@word
M=!M
D=M
@print_screen
0;JMP

(reset_i)
@i
M=0
@flip_word
0;JMP

