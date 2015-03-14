{- 
	Extract a slice from a list.

	Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

	Example in Haskell:

	*Main> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
	"cdefg"
-}

split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split xs 0 = ([], xs)
split xs n = 
	let 
		spl = split (tail xs) (n - 1)
	in 
		((head xs : fst spl) , (snd spl))

slice :: [a] -> Int -> Int -> [a]
slice xs 0 n = fst $ split xs n
slice xs n m = slice ( snd $ split xs (n - 1) ) 0 (m - n + 1)

slice2 :: [a] -> Int -> Int -> [a]
slice2 xs n m = take (m - n + 1) (drop (n - 1) xs)

main = do
	print $ slice2 "abcdefghijk" 3 7

