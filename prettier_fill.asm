//print checkerboard
// when 'c' is pressed invert entire board


// infinite loop checking for 'c' being pressed
(check_for_c_press)

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


//print board
(print_board)
@SCREEN
M=D







@check_for_c_press
0;JMP


(flip_binary_word)
@21845
D=A
D=!D
@print_board
0;JMP
