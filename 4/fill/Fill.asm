@8191
D = A
@segments
M = D

@LOOP
0, JEQ

(LOOP)
    @segment
    M = 0
    @KBD
    D = M
    @R1
    M = D
    @INPUTRESET
    D, JEQ
    @INPUTSET
    0, JEQ

(INPUTSET)
    @fill
    M = -1
    @PRINT
    0, JEQ

(INPUTRESET)
    @fill
    M = 0
    @PRINT
    0, JEQ

(PRINT)
    @segments
    D = M
    @segment
    D = D - M 
    @LOOP
    D, JLT

    @SCREEN
    D = A 
    @segment
    D = D + M
    @current
    M = D
    @fill
    D = M
    @current
    A = M
    M = D

    @segment
    M = M + 1
    
    @PRINT
    0, JEQ