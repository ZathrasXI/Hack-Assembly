//Rogue
//base address of @ 
@SCREEN
D=A
@base
M=D

@init_symbol
0;JMP

@bottom_border
0;JMP

(main)
@print
0;JMP

(key_press)
@KBD
D=M
@key_press
D;JEQ
// v
@133
D=D-A
@down
D;JEQ
// ^
@KBD
D=M
@131
D=D-A
@up
D;JEQ
//<
@KBD
D=M
@130
D=D-A
@left
D;JEQ
//>
@KBD
D=M
@132
D=D-A
@right
D;JEQ

@key_press
D;JNE

(left)
@left_ret
D=A
@R13
M=D
@clear
0;JMP
(left_ret)
@base
M=M-1
@KBD
M=0
@print
0;JMP

(right)
@right_ret
D=A
@R13
M=D
@clear
0;JMP
(right_ret)
@base
M=M+1
@KBD
M=0
@print
0;JMP

(up)
//upper border check
//if base - 352 < 16384 return to key press
@352
D=A
@base
D=D-M
@16384
D=D-A
@key_press
D;JLT

@up_ret
D=A
@R13
M=D
@clear
0;JMP
(up_ret)

@352
D=A
@base
M=M-D
@KBD
M=0
@print
0;JMP

(down)
//lower border check
//if base + 352 > 24479 return to key press
@352
D=A
@base
D=D+M
@24479
D=A-D
@key_press
D;JLT

@down_ret
D=A
@R13
M=D
@clear
0;JMP
(down_ret)
@352
D=A
@base
M=M+D
@KBD
M=0
@print
0;JMP

(init_symbol)
@15360
D=A
@l0
M=D

@26112
D=A
@l1
M=D

@16896
D=A
@l2
M=D

@23040
D=A
@l3
M=D

@27136
D=A
@l4
M=D

@l5
M=D

@23040
D=A
@l6
M=D

@17920
D=A
@l7
M=D

@24576
D=A
@l8
M=D

@15872
D=A
@l9
M=D

@l10
M=0

@main
0;JMP

(print)
//row 0
@l0
D=M
@base
A=M
M=D
//row 1
@32
D=A
@base
D=M+D
@tmp
M=D // base + 32
@l1
D=M
@tmp
A=M
M=D
//row 2
@32
D=A
@tmp
M=M+D // row 1 plus + 32
@l2
D=M
@tmp
A=M
M=D
//row 3
@32
D=A
@tmp
M=M+D 
@l3
D=M
@tmp
A=M
M=D
//row 4
@32
D=A
@tmp
M=M+D 
@l4
D=M
@tmp
A=M
M=D
//row 5
@32
D=A
@tmp
M=M+D 
@l5
D=M
@tmp
A=M
M=D
//row 6
@32
D=A
@tmp
M=M+D 
@l6
D=M
@tmp
A=M
M=D
//row 7
@32
D=A
@tmp
M=M+D 
@l7
D=M
@tmp
A=M
M=D
//row 8
@32
D=A
@tmp
M=M+D 
@l8
D=M
@tmp
A=M
M=D
//row 9
@32
D=A
@tmp
M=M+D 
@l9
D=M
@tmp
A=M
M=D
//row 10
@32
D=A
@tmp
M=M+D 
@l10
D=M
@tmp
A=M
M=D
@bottom_border
0;JMP

(clear)
@base
D=M
@i
M=D
@11
D=A
@counter
M=D
(loop)
@i
A=M
M=0
@32
D=A
@i
M=M+D
@counter
MD=M-1
@loop
D;JNE
@R13
A=M
0;JMP

(bottom_border)
@96
D=A
@i
M=D

@24480
D=A
@border_addr
M=D

(fill_border)
@border_addr
A=M
M=-1
@border_addr
M=M+1
@i
MD=M-1
@fill_border
D;JGT
@key_press
0;JMP





//word is greater than 256 then symbol is on right side
//when on right side, and instruction is to go left, then symbol >> 8
//to go left we shift right


//... to go right we shift left
// when word is less than 256 then symbol is on left side
// when on left side, and instruction is to go right, then symbol << 8



