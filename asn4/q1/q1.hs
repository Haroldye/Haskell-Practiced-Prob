-- Assignment : 4
-- Question   :	1
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
{- 
Function mult that multiplies two numbers 
using only the addition operator.
-}

mult a b
 | b == 0 = 0
 | b > 0  = a + mult a (b-1)

-- pattern matching
-- mult _ 0 = 0
-- mult a b = a + mult a (b-1)