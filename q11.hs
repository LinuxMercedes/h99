{-

Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

Example:

P11> encodeModified "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',
 Multiple 2 'a',Single 'd',Multiple 4 'e']


-}

pack :: (Eq a) => [a] -> [[a]]
pack xs = foldr _pack [] xs
	where 
		_pack x [] = [[x]]
		_pack x (acc:accs)
			| x == head acc = (x:acc):accs
			| otherwise = [x]:acc:accs

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = map (\xs -> (length xs, head xs)) $ pack xs

data RLE = Multiple Int Char | Single Char deriving Show

encodeModified :: [Char] -> [RLE]
encodeModified chars = map _enc $ encode chars
	where
		_enc (1, x) = Single x
		_enc (n, x) = Multiple n x

main = do
	print $ encodeModified "aaaabccaadeeee"

