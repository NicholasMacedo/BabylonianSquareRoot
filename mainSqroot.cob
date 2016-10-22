*> Babylonian Square Root Solver
*> By: Nicholas Macedo
*> March 25th 2016

identification division.
program-id. main-program.
environment division.
data division.

*> Variables used in main program only.
working-storage section.

*> Store the number given by the user.
01 usernum pic S9(9)V9(9).

*> Store the answer given by the babylonian square root.
01 babanswer pic S9(9)V9(9).

*> Store the answer given by the built in square root.
01 cobanswer pic S9(9)V9(9).

procedure division.

    display "=-= Welcome to Square Root Calculator written in Cobol! =-=".
    display "This program will take the given number and...".
    display "   1) Give the square root using the Babylonian style. ".
    display "   2) Give the square root using the built-in Cobol function.".

    perform with test after until usernum = 0  *> Loop until user enters 0 to leave program.
        display "  "
        display "> Please enter a number or 0 to exit."
        accept usernum  *> Get number from user. Letters count as 0.
        display "  "
        if usernum > 0 then *> Number is greater than 0 thus square root exists.
            call "sqroot" using usernum, babanswer   *> Call the square root function in another file.
            display "Square root of ", usernum, " using Babylonian style: ", babanswer
            compute cobanswer = function sqrt (usernum) *> Compute the square root value using built in function.
            display "Square root of ", usernum, " using Built-in Cobol Function: ", cobanswer
        else
            if usernum < 0 then *> Number is less than 0 thus square root does not exists.
                display "Invalid Number. Number must be positive."
            end-if 
        end-if
    end-perform.

    display "Thank You.".

end-procedure.
