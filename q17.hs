{-

	Split a list into two parts; the length of the first part is given.

	Do not use any predefined predicates.

	Example in Haskell:

	*Main> split "abcdefghik" 3
	("abc", "defghik")
-}

split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split xs 0 = ([], xs)
split xs n = 
	let 
		spl = split (tail xs) (n - 1)
	in 
		((head xs : fst spl) , (snd spl))

main = do
	print $ split "abcdefghijk" 3

