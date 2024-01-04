//checkerboard with squares 64 * 64 pixels
//square width is 4 words
//1 row is 8 squares, 32 words
//alternates when 'c' pressed
//screen range is 0x4000 - 0x5FFF

//1 row of squares = 32 * 64 words = 

(start)

@word
M=-1

@67
D=A
@KBD
D=D-M
@flip_word
D;JEQ

(setup)
@SCREEN
D=A

@addr
M=D

//count width of square
@4
D=A
@s_count
M=D

//bw count, 256 pairs of bw squares in a row

//board = 4 rows
@4
D=A
@row_count
M=D

(board)



(row)
@256
D=A
@bw_count
M=D



(bw)

(b_square)
@word
D=M
@addr
A=M
M=D

@addr
M=M+1
@s_count
MD=M-1

@b_square
D;JGT

@4
D=A
@s_count
M=D

(w_square)
@word
D=!M
@addr
A=M
M=D

@addr
M=M+1
@s_count
MD=M-1

@w_square
D;JGT

@4
D=A
@s_count
M=D


@bw_count
MD=M-1
@bw
D;JGT

@word
M=!M

@row_count
MD=M-1
@row
D;JGT

@start
0;JMP

(flip_word)
@word
M=!M
@setup
0;JMP



