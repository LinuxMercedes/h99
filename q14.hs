{-

	Duplicate the elements of a list.

	Example in Haskell:

	> dupli [1, 2, 3]
	[1,1,2,2,3,3]

-}	

dupli :: [a] -> [a]
dupli = concatMap (replicate 2) 

main = do
	print $ dupli [1,2,3]

