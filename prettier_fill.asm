//print checkerboard
// when 'c' is pressed invert entire board


// infinite loop checking for 'c' being pressed
(check_for_c_press)

//starting address
@SCREEN
D=A
@current_address
M=D
A=D

//@i
M=0

(get_word)
// go to KBD check if input == 67 ('c')
@KBD
D=M
@67
M=A
D=D-M

// if KBD == 'c' flip binary word
@flip_binary_word
D;JEQ

//else
@21845
D=A


(print_board)
// go to current address
@current_address
A=M
//PRINT word
M=D

//*?*?
//increment address
@current_address
M=M+1
D=M

//if final address reached, restart
@24575
D=D-A
@check_for_c_press
D;JEQ


//set word for next iteration
@21845
D=A

@get_word
0;JMP
//*?*?

@check_for_c_press
0;JMP


(flip_binary_word)
@21845
D=A
D=!D
@print_board
0;JMP
