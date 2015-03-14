{-

	Rotate a list N places to the left.

	Hint: Use the predefined functions length and (++).

	Examples in Haskell:

	*Main> rotate ['a','b','c','d','e','f','g','h'] 3
	"defghabc"
	
	*Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
	"ghabcdef"

-}

rotate :: [a] -> Int -> [a]
rotate xs n 
	| n >= 0 = _rot xs n
	| n < 0 = _rot xs (length xs + n)
	where
		_rot :: [a] -> Int -> [a]
		_rot xs n = 
			let spl = splitAt n xs
			in snd spl ++ fst spl 

main = do
	print $ rotate "abcdefgh" 3
	print $ rotate "abcdefgh" (-2)

