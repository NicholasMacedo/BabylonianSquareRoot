*> Babylonian Square Root Solver
*> By: Nicholas Macedo
*> March 25th 2016

identification division.
program-id. sqroot.
environment division.
data division.

*> Variables used in sub-program only.
working-storage section.

*> Holds the temp answer until the end of the loop.
01 tempans pic S9(9)V9(9).

*> Holds the guess for calculation.
01 guess pic S9(9)V9(9).

*> Used in the "for" loop.
77 i picture s9(4).


*> Variables passed into function. 
linkage section.

*> Passed in number from user to be calculated. 
01 orignum pic S9(9)V9(9).

*> Returns the answer back to the main program.
01 result pic S9(9)V9(9).


procedure division using orignum, result.
    compute tempans = orignum / 2.                *> Calculate a temp answer 4 l8r.
    perform varying i from 1 by 1 until i > 1000  *> Loops 1000 times for accuracy.
        compute guess = orignum / tempans         *> Calculate another value 4 math.
        compute tempans = (tempans + guess) / 2   *> Takes the average of the two.
    end-perform.
    compute result = tempans.                     *> Sets answer to return value.

end-procedure.
