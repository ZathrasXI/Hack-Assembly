//checkerboard with squares 64 * 64 pixels
//square width is 4 words
//1 row is 8 squares, 32 words
//alternates when 'c' pressed
//screen range is 0x4000 - 0x5FFF

//1 row of squares = 32 * 64 words = 

@word
M=-1

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
@board_count
M=D
(board)
@256
D=A
@bw_count
M=D

(bw)
(b_square)
D=-1
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
D=0
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

@board_count
MD=M-1
@board
D;JGT

(end)
@end
0;JMP

