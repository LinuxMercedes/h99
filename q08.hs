{-

	Eliminate consecutive duplicates of list elements.

	If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

	Example:

	> compress "aaaabccaadeeee"
	"abcade"

-}


compress :: (Eq a) => [a] -> [a]
compress xs = foldr _compress [] xs
	where
		_compress x acc
			| acc == [] = [x]
			| x == head acc = acc
			| otherwise = x:acc

main = do
	print $ compress "aaaabccaadeeee"
	print $ compress ""
 