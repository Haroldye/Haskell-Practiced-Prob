-- Assignment : 4
-- Question   :	2
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
{- 
a function pow that, given arguments a and n , computes the result a and n
without using any of the built-in power operators or any library functions.
-}

pow a n
 | n==0 = 1
 | n>0  = a * pow a (n-1)
