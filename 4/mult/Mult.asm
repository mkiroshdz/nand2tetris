// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition. Terrible performance

@count
M = 0
@result
M = 0
@R2
M = 0

@R1
D = M
@quantity
M = D
@R0
D = M
@maxcount
M = D

@LOOP
D, JGT

M = -D
@quantity
M = -M

@LOOP
0, JEQ

(LOOP)
    @maxcount
    D = M
    @count
    D = D - M
    @AFTER_LOOP
    D, JEQ

    @quantity
    D = M
    @result
    M = M + D 
    @count
    M = M + 1

    @LOOP
    0, JEQ

(AFTER_LOOP)
    @result
    D = M
    @R2
    M = D

(END)
    @END
    0, JEQ