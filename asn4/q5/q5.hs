-- Assignment : 4
-- Question   :	5
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
--
-- Goal: Implement Insertion Sort
{-
Insertion Sort can be recursively expressed as follows: to sort A[1..n], 
first recursively sort A[1..n-1], then insert A[n] into the sorted array 
A[1..n - 1]
-}
--

-- (1)function insert:
-- takes a number x and a sorted list of numbers l
-- This function should return a list of numbers with x 
-- inserted at the correct location in l, preserving its sorting
insert a [] = [a]
insert a bAll@(b:bs) 
 | a <= b = a : bAll
 | otherwise = b : insert a bs
 
-- (2)function isort:
isort [] = []
isort (x:xs) = (insert x smaller) ++ larger
 where smaller = isort [c | c <- xs, c <= x]
       larger  = isort [c | c <- xs, c > x]