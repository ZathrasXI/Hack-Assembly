// when no key pressed print checkerboard in figure 1
// when 'c' pressed print inverse checkerboard

// while KBD != 'c'
//	print(0xffff,0x0000 * 16)
// 
//	if KBD == 'c'
//		print(0xffff,0x0000, * 16)

(wait_for_c_press)

// print default checkboard 
// for each word in the row print alternating pixels
@21845
D=A

@SCREEN
M=!D






// get input from KBD
@KBD
D=M

// if 'c' not presed; if KBD - 67 != 0
// go to top of program; re-print checkerboard
@67
M=A
D=D-M
@wait_for_c_press
D;JNE

// if 'c'pressed; if KBD - 67 == 0
// continue and print inverse keyboard

@SCREEN
D=M
M=!D








@wait_for_c_press
0;JMP
