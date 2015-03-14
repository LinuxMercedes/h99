{-

	Run-length encoding of a list (direct solution).

	Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

	Example in Haskell:

	P13> encodeDirect "aaaabccaadeeee"
	[Multiple 4 'a',Single 'b',Multiple 2 'c',
	Multiple 2 'a',Single 'd',Multiple 4 'e']

-}

data RLE a = Multiple Int a | Single a deriving (Show, Eq)

encodeDirect :: Eq a => [a] -> [RLE a]
encodeDirect xs = foldr pack [] xs
	where
		pack :: Eq a => a -> [RLE a] -> [RLE a]
		pack x [] = [Single x]
		pack x (Multiple n y:rles)  
			| x == y = (Multiple (n+1) x) : rles
			| otherwise = (Single x) : (Multiple (n+1) y) : rles
		pack x (Single y:rles) 
			| x == y = (Multiple 2 x) : rles
			| otherwise = (Single x) : (Single y) : rles

main = do
	print $ encodeDirect "aaaabccaadeeeee"

