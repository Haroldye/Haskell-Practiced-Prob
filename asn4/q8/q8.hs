-- Assignment : 4
-- Question   :	8
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
--
-- Goal: 1. Convert hexadecimal string to its equivalent decimal integer
--		 2. Input character checking
--

import Data.Char (ord, toUpper, toLower)
isChar x = x `elem` ['A'..'F']
isNum x = x `elem` ['0'..'9']
isValue x = isChar x || isNum x || x `elem` ['a'..'f']
pow a b
 | b == 0 = 1
 | even b = half * half
 | odd b  = a * half * half
 where half = pow a (div b 2)
 
-- convert/calculation function
hToDecCal [] = 0
hToDecCal hAll@(h1:hs)
 | isChar h1 = (ord h1 - 55) * (pow 16 (length hAll-1)) + hToDecCal hs
 | isNum  h1 = (ord h1 - 48) * (pow 16 (length hAll-1)) + hToDecCal hs
 | otherwise = error "Non-hexadecimal digits present" 

-- toUpper str
myToUpper [] = []
myToUpper (s0:ss) 
 | ord s0 >= 97 && ord s0 <= 102 = toUpper s0 : myToUpper ss
 | otherwise = s0 : myToUpper ss

-- main function
hexStrToDec (s0:ss)
 | ord s0 == 48 = hexStrToDec ss
 | ord s0 == 88 || ord s0 == 120 = hexStrToDec ss
 | isValue s0 = hToDecCal (myToUpper (s0:ss))
 | otherwise = error "Non-hexadecimal digits present" 

 
 
 
 
 
 