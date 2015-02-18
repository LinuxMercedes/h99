{-
 Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

	Example:

	encode "aaaabccaadeeee"
	[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]

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

main = do
	print $ encode "aaaabccaadeeee"


