-- Assignment : 4
-- Question   :	3
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
{- 
same functionality with Question 2, but using pattern matching 
instead of guarded expressions
-}

pow' _ 0 = 1
pow' a n = a * pow' a (n-1)