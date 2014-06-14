{-
(*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

Example in Haskell:

*Main> isPalindrome [1,2,3]
False
*Main> isPalindrome "madamimadam"
True
*Main> isPalindrome [1,2,4,8,16,8,4,2,1]
True
-}

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = reverse xs == xs
{- Because I'm a masochist
isPalindrome [] = True
isPalindrome (x:[]) = True
isPalindrome (x:y:[]) = x == y
isPalindrome (xs) = 
	if head xs == last xs then 
		isPalindrome $ tail $ init xs 
	else 
		False
-}

main = do 
	print $ isPalindrome [1,2,3]
	print $ isPalindrome "madamimadam"
	print $ isPalindrome [1,2,4,8,16,8,4,2,1]
	print $ isPalindrome [1,2,2,1]

