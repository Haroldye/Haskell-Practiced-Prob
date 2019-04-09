-- Assignment : 4
-- Question   :	4
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
--
-- Goal: 1. Get used to List comprehensions
--		 2. explore how to build both finite and infinite lists 
--			using list comprehensions.
--

-- (a)
odds = [x | x <- [1..10], odd x]
-- odds = map odd [1..10] -- will gives bool list
-- GHCI: [odds | odds <- [1..10], odd odds]

-- (b)
-- construct an infinite n, n1 = [1..n]
n1 = 1 : map (+1) n1
positiveEvens = [x | x <- n1, even x]

-- (c)
pow _ 0 = 1
pow a b = a * pow a (b-1)
n0 = 0 : map (+1) n0
powersOfTwo = [(pow 2 y) | y <- n0]

-- (d)
-- determine if x is prime number
isPrime x
 | x <= 1 = False
 | otherwise = null [k | k <- [2.. x -1] , x `mod ` k == 0]
-- find the first n prime numbers
firstNPrimes n = take n primeList
 -- construct a prime list
 where primeList = [ p | p <- n1, isPrime p]












