# Ada Subtype Range Check Error

This example demonstrates a potential runtime error in Ada that can occur when operating on a subtype with a restricted range. If the result of an operation falls outside the defined range, a Constraint_Error exception will be raised.

## The Bug

The `bug.ada` file contains a simple Ada program.  A subtype `My_Subtype` is created with a range from 1 to 10. An integer variable `X` is declared as `My_Subtype` and initialized to 1.  The program attempts to add 5 to `X`. If the result exceeds the maximum value of the subtype, a `Constraint_Error` occurs.

## The Solution

The solution (`bugSolution.ada`) uses a conditional statement to check if the result of an operation will be within the subtype's range before performing the operation. If it's not, an alternative approach is taken (here it is printing an error message; a more sophisticated method could be used depending on the context). This prevents the `Constraint_Error` exception from being raised.
