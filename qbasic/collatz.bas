REM "Written by HAV0X_ 12/27/2025"
REM "Tested and written on qbjs.org"
CLS
DIM peak AS INTEGER
DIM steps AS INTEGER

INPUT "Input a positive integer to run the collatz conjecture on: "; number
PRINT "Starting number: "; number

peak = number

startTime = TIMER
WHILE number <> 1
    IF number > peak THEN peak = number
    IF number MOD 2 = 0 THEN
        number = number / 2
    ELSE
        number = number * 3 + 1
    END IF
    steps = steps + 1
WEND
endTime = TIMER
duration = endTime - startTime

PRINT "Peak number: "; peak;" Steps: "; steps;" Duration: "; duration
