{-
	Decode a run-length encoded list.

	Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

	Example in Haskell:

	P12> decodeModified 
				[Multiple 4 'a',Single 'b',Multiple 2 'c',
					Multiple 2 'a',Single 'd',Multiple 4 'e']
	"aaaabccaadeeee"

-}

data RLE a = Multiple Int a | Single a deriving Show

decodeModified :: Eq a => [RLE a] -> [a]
decodeModified rles = concatMap unpack rles
	where
		unpack :: RLE a -> [a]
		unpack (Multiple n x) = replicate n x
		unpack (Single x) = [x]

main = do 
	print $ decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',
					Multiple 2 'a',Single 'd',Multiple 4 'e']
