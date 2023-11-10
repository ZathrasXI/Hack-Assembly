// when no key pressed print checkerboard in figure 1
// when 'c' pressed print inverse checkerboard




// print default checkboard 

// create current_address variable, set starting value to 0x4000
@SCREEN
D=A
@current_address
M=D

//create counter to check when new row is reached
@i
M=0

@21845
D=A
@bw_word
M=D

(print_word)
//// set current_address to bwp
//get bwp value
@bw_word
D=M

//go to current_address
@current_address
A=M

//load bwp value
M=D

//increase current address by 1
//@16
//D=A
@current_address
M=M+1

// increment i
@i
M=M+1
D=M

// if i is 32 then reset i to 0 and invert bwp
@32
D=D-A

@invert_word_reset_i
D;JEQ


// jump to top of loop
@print_word
0;JMP




// after 32 words have been printed, reset i to 0 and invert bwp
(invert_word_reset_i)
@bw_word
M=!M
@i
M=0
@print_word
0;JMP
// go to top
@listen_for_c_press
0;JMP

(flipword)
@bw_word
M=!M
@print_word
0;JMP

