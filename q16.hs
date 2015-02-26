{-
	Drop every N'th element from a list.

	Example in Haskell:

	*Main> dropEvery "abcdefghik" 3
	"abdeghk"

-}

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery xs n 
	| length xs >= n = (init $ take n xs) ++ dropEvery (drop n xs) n
	| otherwise = xs

main = do
	print $ dropEvery "abcdefghijk" 3
