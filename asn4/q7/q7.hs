-- Assignment : 4
-- Question   :	7
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
--
-- Goal: complete words convertion
--
import Data.Char (ord, chr)

isVowel a = a `elem` ['a','o','u','A','O','U']
isE e = e `elem` ['e','E']
isI i = i `elem` ['i','I']

l33t [] = []
l33t (x:xs) 
 | (isVowel x && ord x < 86) = chr (ord x + 32) : (l33t xs)
 | isVowel x = x : (l33t xs)
 | isE x = '3' : (l33t xs)
 | isI x = '1' : (l33t xs)
 | x == '!' = "!!!111oneone" ++ (l33t xs)
 | ord x >= 97 && ord x <= 122 = chr (ord x -32) : (l33t xs)
 | otherwise = x : (l33t xs)

