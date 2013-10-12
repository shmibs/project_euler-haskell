-- haskell functions for solving project euler questions!
-- (see projecteuler.net)

-- problem 1:
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
p1 = sum( [3,6..999] ++ [ x | x <- [5,10..999], not(x `elem` [3,6..999])] )

-- Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
fibnext x = (x !! 0 + x !! 1) : x
