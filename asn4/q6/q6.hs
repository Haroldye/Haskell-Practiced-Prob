-- Assignment : 4
-- Question   :	6
-- Author 	  : H. Ye
-- Email	  : hye42@uwo.ca
--
-- Goal: translate merge-sort pseudocode to hs code
--

-- (a) func. merge
merge a b
 | a == [] = b
 | b == [] = a
-- compare the head of each list
merge aAll@(a:aRest) bAll@(b:bRest)
 | a < b = a : merge aRest bAll
 | otherwise = b : merge aAll bRest

-- (b) func. merge-sort
msort [] = []
msort [a] = [a]
msort a = merge firstHalf lastHalf
 where middle = div (length a) 2
       firstHalf = msort (take middle a)
       lastHalf  = msort (drop middle a)
