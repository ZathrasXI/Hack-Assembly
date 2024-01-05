//Rogue
//base address of @ 
@SCREEN
D=A
@base
M=D

// '@' symbol
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
